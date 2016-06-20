module Api
  module V1
    class CurrentUserController < ApplicationController

      def show
        render json: current_user, root: 'users', adapter: :json_api
      end

    end
  end
end
