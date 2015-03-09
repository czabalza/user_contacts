class Username < ActiveRecord::Migration
  def change
    remove_column :users, :email, :name
    add_column :users, :username, :string, default: 'nil', null: false

    add_index :users, :username, unique: true
  end
end
