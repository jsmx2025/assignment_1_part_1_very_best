class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.integer :bookmark_id
      t.integer :user_id

      t.timestamps

    end
  end
end
