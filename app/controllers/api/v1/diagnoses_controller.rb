module Api
  module V1
    class DiagnosesController < ApplicationController

      def show
        render json: Diagnosis.find(params[:id]), include: ['entries']
        #render json: {data: Diagnosis.metadata(Diagnosis.find(params[:id]))}
        binding.pry
      end

      def create
        Diagnosis.create(diagnosis_params)
      end

      def metadata
        render json: Diagnosis.metadata(Diagnosis.find(params[:id]))
      end

      private

      def diagnosis_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params)
      end

    end
  end
end
