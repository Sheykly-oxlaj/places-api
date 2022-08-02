class PlacesController < ApplicationController
  def index
    @places = Place.all
    render template: "places/index"
  end

  def create
    @place = Place.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      image_url: params[:image_url],
    )
    if @place.save
      render template: "places/show"
    else
      render json: { errors: @place.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @place = Place.find(params[:id])
    render template: "places/show"
  end

  def update
    @place = Place.find(params[:id])
    @place.name = params[:name] || @place.name
    @place.price = params[:price] || @place.price
    @place.description = params[:description] || @place.description
    @place.image_url = params[:image_url] || @place.image_url
    if @place.save
      render template: "places/show"
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
