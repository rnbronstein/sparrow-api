module Api
  module V1
    class EntriesController < ApplicationController

      def index
        #binding.pry
        render json: Entry.all_entries_for_user(current_user), include: ['diagnosis']
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
