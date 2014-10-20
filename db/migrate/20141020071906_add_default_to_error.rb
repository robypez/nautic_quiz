class AddDefaultToError < ActiveRecord::Migration
  def change
    change_column :questions, :errors, :integer, default: 0
  end
end
