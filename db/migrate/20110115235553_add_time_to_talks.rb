class AddTimeToTalks < ActiveRecord::Migration
  def self.up
    add_column :talks, :time, :time
  end

  def self.down
    remove_column :talks, :time
  end
end
