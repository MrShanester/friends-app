class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.integer :friend_id
      t.string :title
      t.string :description
      t.boolean :evaluation
      t.integer :points

      t.timestamps
    end
  end
end
