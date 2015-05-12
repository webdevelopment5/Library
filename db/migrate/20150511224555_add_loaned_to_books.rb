class AddLoanedToBooks < ActiveRecord::Migration
  def change
    add_column :books, :loaned, :boolean
  end
end
