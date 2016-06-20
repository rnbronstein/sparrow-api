module Api
  module V1
    class UsersController < ApplicationController

      def show
        #render json: User.find(params[:id]), include: ['diagnoses', 'entries']
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: {}, status: 200
        else
          render json: user.errors, status: 422
        end
      end

      private
      def user_params
        params.require(:user).permit(:name, :email, :password)
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end
    end
  end
end
