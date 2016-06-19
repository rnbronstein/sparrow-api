module Api
  module V1
    class EntriesController < ApplicationController

      def index
        render json: Entry.all
      end

      def create
        Entry.create(entry_params)
      end

      private

      def entry_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end

    end
  end
end
