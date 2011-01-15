class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.string :name
      t.string :url
      t.text :description
      t.integer :talk_id

      t.timestamps
    end

    add_index :resources, :talk_id
  end

  def self.down
    drop_table :resources
  end
end
