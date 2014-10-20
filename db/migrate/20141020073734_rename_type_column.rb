class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :questions, :type, :quiz_type
  end
end
