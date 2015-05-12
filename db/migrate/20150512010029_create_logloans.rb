class CreateLogloans < ActiveRecord::Migration
  def change
    create_table :logloans do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.boolean :physical
      t.datetime :loandate
      t.datetime :loanreturn

      t.timestamps
    end
  end
end
