class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :dish
      t.integer :cuisine_id

      t.timestamps

    end
  end
end
