class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :integer
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip, :integer
    add_column :users, :rib, :integer
    add_column :users, :avatar, :string
    add_column :users, :sign, :string
    add_column :users, :license, :string
    add_column :users, :telepilot_declaration, :string
    add_column :users, :role, :string
  end
end
