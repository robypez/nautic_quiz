class RefactorQuizClass < ActiveRecord::Migration
  def change
    remove_column :questions, :quiz_id, :integer
    
    create_table :quiz_questions do |t|
      t.belongs_to :quiz
      t.belongs_to :question
      t.timestamps
    end

  end
end
