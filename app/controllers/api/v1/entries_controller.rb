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
        binding.pry
        entry = Entry.find(entry_params[:id])
        diagnosis = Diagnosis.find(entry_params[:diagnosis_id])
        diagnosis.diagnosis = entry_params[:diagnosis]
        entry.diagnosis = diagnosis
        entry.value = entry_params[:value]
        entry.save
      end

      private

      def entry_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end

    end
  end
end
