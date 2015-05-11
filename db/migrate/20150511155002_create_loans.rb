class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :book, index: true
      t.references :user, index: true
      t.boolean :physical
      t.datetime :loandate
      t.datetime :loanreturn

      t.timestamps
    end
  end
end
