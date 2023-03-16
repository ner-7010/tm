class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :task
      t.datetime :start_time
      t.integer :time_required
      t.integer :time_taken
      t.integer :time_free
      t.integer :time_left
      t.boolean :check
      t.integer :user_id
      t.string :category
      t.date :day
      t.string :time

      t.timestamps
    end
  end
end
