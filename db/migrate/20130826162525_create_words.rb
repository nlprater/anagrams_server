class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.string :anagram_key
      t.timestamps
    end
  add_index :words, :name, :unique => true
  add_index :words, :anagram_key
  end
end
