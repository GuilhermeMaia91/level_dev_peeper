class AddOwnerToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :email, :string
  end
end
