class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.references :user, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
