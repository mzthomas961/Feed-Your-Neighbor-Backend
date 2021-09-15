class NotificationsController < ApplicationController
    def index
        @notifications = Notification.all
        render json: @notifications
    end

    def show
        @notification = Notification.find(params[:id])
        render json: @notification
    end

    def new
        @notification = Notification.new
        render json: @notification
    end

    def edit
        @notification = Notification.find(params[:id])
        render json: @notification
    end

    def create
        @notification = Notification.create(notification_params)
        render json: @notification
    end

    def update
        @notification = Notification.find(params[:id])
        @notification.update(notification_params)
        render json: @notification
    end

    def destroy
        @notification = Notification.find(params[:id])
        @notification.destroy
        render json: @notification
    end

    private

    def notification_params
        params.permit(:accepted, :rejected, :active, :user_id, :trade_id)
    end
end
