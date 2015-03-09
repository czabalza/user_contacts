class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, default: 'nil', null: false
      t.string :email, default: 'nil', null: false
      t.integer :user_id, default: 'nil', null: false
      
      t.timestamps null: false
    end

    add_index :contacts, [:name, :email], unique: true
    add_index :contacts, :user_id
  end
end
