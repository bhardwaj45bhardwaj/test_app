class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
    	t.string :name
    	t.integer :created_by
      	t.timestamps
    end
  end
end
