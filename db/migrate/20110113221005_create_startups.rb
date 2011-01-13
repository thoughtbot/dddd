class CreateStartups < ActiveRecord::Migration
  def self.up
    create_table :startups do |t|
      t.string :name
      t.text   :description
      t.string :contact_email

      t.timestamps
    end
  end

  def self.down
    drop_table :startups
  end
end
