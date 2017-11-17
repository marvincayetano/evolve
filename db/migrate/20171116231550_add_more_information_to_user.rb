class AddMoreInformationToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin_id, :integer
    add_column :users, :company_id, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :position, :string
    add_column :users, :address_id, :integer
  end
end
