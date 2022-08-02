class PlacesController < ApplicationController
  def index
    @places = Place.all
    render json: @places.as_json
  end

  def create
    @place = Place.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
    )
    if @place.save
      render json: @place.as_json
    else
      render json: { errors: @place.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @place = Place.find(params[:id])
    render json: @place.as_json
  end

  def update
    @place = Place.find(params[:id])
    @place.name = params[:name] || @place.name
    @place.price = params[:price] || @place.price
    @place.description = params[:description] || @place.description
    @place.image_url = params[:image_url] || @place.image_url
    if @place.save
      render json: @place.as_json
    else
      render json: { errors: @place.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    place = Place.find(params[:id])
    place.destroy
    render json: { message: "Successfully Destroyed Place" }
  end
end
