class MembershipsController < ApplicationController

    def index 
        render json: Membership.all, status: :ok
    end

    def create 
        membership = Membership.create!(member_params)
        render json: membership, status: :created
    end

    private

    def member_params
        params.permit(:client_id, :gym_id, :charge )
    end

end
