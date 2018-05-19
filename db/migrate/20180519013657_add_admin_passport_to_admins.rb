class AddAdminPassportToAdmins < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :admin_passport, :string
  end
end
