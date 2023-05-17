class RemoveBodFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :bod, :string
  end
end
