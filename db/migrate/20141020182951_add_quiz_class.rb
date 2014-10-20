class AddQuizClass < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.integer :section_id
    end

    add_column :questions, :quiz_id, :integer
  end
end
