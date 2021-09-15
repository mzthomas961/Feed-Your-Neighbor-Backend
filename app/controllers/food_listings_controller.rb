class FoodListingsController < ApplicationController
    def index
        @food_listings = FoodListing.all
        render json: @food_listings
    end

    def show
        @food_listing = FoodListing.find(params[:id])
        render json: @food_listing
    end

    def new
        @food_listing = FoodListing.new
        render json: @food_listings
    end

    def edit
        @food_listing = FoodListing.find(params[:id])
        render json: @food_listings
    end

    def create
        @food_listing = FoodListing.create(food_listing_params)
        render json: @food_listing
    end

    def update
        @food_listing = FoodListing.find(params[:id])
        @food_listing.update(food_listing_params)
        render json: @food_listing
    end

    def destroy
        @food_listing = FoodListing.find(params[:id])
        @food_listing.destroy
        render json: @food_listing
    end

    private

    def food_listing_params
        params.permit(:name, :description, :image, :cuisine, :user_id)
    end
end
