class AddContactEmailToSchools < ActiveRecord::Migration
  def self.up
    add_column :schools, :contact_email, :string, :default => "", :null => false
  end

  def self.down
    remove_column :schools, :contact_email
  end
end
