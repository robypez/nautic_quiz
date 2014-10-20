class QuizController < ApplicationController
  def new
    @quiz = Quiz.create_quiz
    - binding.pry
    @section = Section.find(params[:section_id]) if params[:section_id]
    #add rescue
  end
end
