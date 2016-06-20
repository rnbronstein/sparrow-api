module Api
  module V1
    class CurrentUserController < ApplicationController

      def show
        render json: current_user, root: 'user', adapter: :json_api
      end

    end
  end
end
