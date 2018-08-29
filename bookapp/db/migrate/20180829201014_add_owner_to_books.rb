class AddOwnerToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :user_owne, :string
  end
end
