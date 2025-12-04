class CreateLikes < ActiveRecord::Migration[8.1]
  def change
    create_join_table :users, :beers, table_name: :likes do |t|
      t.timestamps
    end
  end
end
