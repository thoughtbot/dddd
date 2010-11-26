class MakeSchoolAnAssociation < ActiveRecord::Migration
  def self.up
    remove_column :registrations, :why
    remove_column :registrations, :school

    add_column    :registrations, :school_id, :integer
    add_index     :registrations, :school_id
  end

  def self.down
    remove_column :registrations, :school_id

    add_column :registrations, :school, :string, :default => "", :null => false
    add_column :registrations, :why,    :text,   :default => "", :null => false
  end
end
