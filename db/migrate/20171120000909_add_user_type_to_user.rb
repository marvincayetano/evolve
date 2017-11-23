class AddUserTypeToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_type_id, :integer, default: 3
    add_column :users, :company_id, :integer
  end
end
