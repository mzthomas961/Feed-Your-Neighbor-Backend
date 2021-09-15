class TradesController < ApplicationController
    def index
        @trades = Trade.all
        render json: @trades
    end

    def show
        @trade = Trade.find(params[:id])
        render json: @trade
    end

    def new
        @trade = Trade.new
        render json: @trade
    end

    def edit
        @trade = Trade.find(params[:id])
        render json: @trade
    end

    def create
        @trade = Trade.create(trade_params)
        render json: @trade
    end

    def update
        @trade = Trade.find(params[:id])
        @trade.update(trade_params)
        render json: @trade
    end

    def destroy
        @trade = Trade.find(params[:id])
        @trade.destroy
        render json: @trade
    end

    private

    def trade_params
        params.permit(:buyer_foodListing_id, :seller_foodListing_id)
    end
end
