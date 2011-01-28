class AddSpeakerEmailToTalks < ActiveRecord::Migration
  def self.up
    add_column :talks, :speaker_email, :string, :default => ""
  end

  def self.down
    remove_column :talks, :speaker_email
  end
end
