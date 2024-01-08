class CreateTodoapps < ActiveRecord::Migration[6.1]
  def change
    create_table :todoapps do |t|
      t.string :add
      t.string :email 
      t.integer :mob_num 

      t.timestamps
    end
  end
end
