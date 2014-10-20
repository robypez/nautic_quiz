class RemoveSectionIdFromQuizzes < ActiveRecord::Migration
  def change
    remove_column :quizzes, :section_id
  end
end
