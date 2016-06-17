module Api
  module V1
    class UsersController < ApplicationController

      def show
        render json: User.find(params[:id]), include: ['diagnoses', 'entries']
      end

    end
  end
end
