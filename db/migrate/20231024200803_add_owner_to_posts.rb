class AddOwnerToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :email, :string
  end
end
