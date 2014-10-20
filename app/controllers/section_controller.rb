class SectionController < ApplicationController
  def show
    @section = Section.find(params[:id])
    @questions = @section.questions.all
  end
end
