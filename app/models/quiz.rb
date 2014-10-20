class Quiz < ActiveRecord::Base
  has_many :quiz_questions
  has_many :questions, through: :quiz_questions
  accepts_nested_attributes_for :questions

  def self.create_quiz(quiz_type = 'base')
    q = Quiz.new
    q.questions << Question.order_by_rand.all
    q.save!
  end

  def self.create_quiz(quiz_type = 'base')
    q = Quiz.create
    # add quiz strategies from MIT
    # q.questions << Question.order_by_rand.limit(3).all
  end
 
end