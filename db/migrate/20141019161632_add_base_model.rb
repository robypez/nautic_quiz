class AddBaseModel < ActiveRecord::Migration
  def change
    
    create_table :sections do |t|
      t.string :icon, :name
    end

    create_table :questions do |t|
      t.string :type, :image
      t.text :text
      t.integer :errors
    end

    create_table :answers do |t|
      t.text :text
      t.boolean :correct, default: false
    end
        
    add_index :questions, :text
    add_index :answers, :text
    add_index :sections, :name
    add_reference :questions, :sections, index: true
    add_reference :answers, :questions, index: true
  end
end
