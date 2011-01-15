class CreateTalks < ActiveRecord::Migration
  def self.up
    create_table :talks do |t|
      t.string :name
      t.string :speaker_name
      t.text :speaker_bio
      t.text :abstract

      t.timestamps
    end
  end

  def self.down
    drop_table :talks
  end
end
