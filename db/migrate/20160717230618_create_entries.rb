class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :story

      t.timestamps null: false
    end
  end
end
