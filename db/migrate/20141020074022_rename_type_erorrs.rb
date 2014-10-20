class RenameTypeErorrs < ActiveRecord::Migration
  def change
        rename_column :questions, :errors, :quiz_errors
  end
end
