class RemoveZipcodeFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :zipcode
  end
end
