module Api
  module V1
    class EntriesController < ApplicationController

      def index
        #binding.pry
        render json: Entry.all_entries_for_user(current_user), include: ['diagnosis']
      end

      def create
        entry = Entry.new(entry_params)
        entry.diagnosis = Diagnosis.find(entry_params)
        entry.save
      end

      def update
        entry = Entry.find(entry_params[:id])
        entry.update(value: entry_params["values"])
      end

      private

      def entry_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end

    end
  end
end
