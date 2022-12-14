class ClientsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    def show
        client = Client.find(params[:id])
        render json: client, status: :ok
    end

    private

    def render_not_found(error)
        render json: { error: error.message }, status: :not_found
    end
end
