class AddUrlToStartups < ActiveRecord::Migration
  def self.up
    add_column :startups, :url, :string, :default => "", :null => false
  end

  def self.down
    remove_column :startups, :url
  end
end
