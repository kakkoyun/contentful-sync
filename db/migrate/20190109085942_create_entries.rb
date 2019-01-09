class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :entry_id
      t.json :fields
      t.json :sys

      t.timestamps
    end
    add_index :entries, :entry_id, unique: true
  end
end
