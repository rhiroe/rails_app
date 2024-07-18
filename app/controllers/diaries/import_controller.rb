module Diaries
  class ImportController < ApplicationController
    def create
      Diary.insert_all(import_params[:diaries], unique_by: :title, record_timestamps: true)
      head :created
    end

    private

    def import_params
      params.require(:import).permit(diaries: [:title, :content])
    end
  end
end
