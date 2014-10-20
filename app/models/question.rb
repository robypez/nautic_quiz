class Question < ActiveRecord::Base
  belongs_to :section
  has_many :answers
  has_many :quiz_questions
  has_many :quizzes, through: :quiz_questions

  def self.error_count
    self.sum(:quiz_errors)
  end
end
