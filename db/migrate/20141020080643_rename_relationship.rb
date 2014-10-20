class RenameRelationship < ActiveRecord::Migration
  def change
    rename_column :answers, :questions_id, :question_id
    rename_column :questions, :sections_id, :section_id
  end
end
