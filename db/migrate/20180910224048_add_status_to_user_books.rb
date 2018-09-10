class AddStatusToUserBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :user_books, :status, :integer, default: 0
  end
end
