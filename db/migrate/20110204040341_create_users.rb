class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :provider,    :default => "", :null => false
      t.string  :uid,         :default => "", :null => false
      t.string  :name,        :default => "", :null => false
      t.string  :twitter,     :default => "", :null => false
      t.text    :description, :default => "", :null => false
      t.boolean :partying,    :default => true

      t.timestamps
    end

    add_index :users, [:provider, :uid]
    add_index :users, :twitter
  end

  def self.down
    drop_table :users
  end
end
