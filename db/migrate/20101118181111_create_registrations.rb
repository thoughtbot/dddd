class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.string :twitter, :default => "",          :null => false
      t.string :name,    :default => "",          :null => false
      t.string :school,  :default => "",          :null => false
      t.text   :why,     :default => "",          :null => false
      t.string :role,    :default => "Developer", :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
