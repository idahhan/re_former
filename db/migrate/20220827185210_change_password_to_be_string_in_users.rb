class ChangePasswordToBeStringInUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :password, :string

  end
end
