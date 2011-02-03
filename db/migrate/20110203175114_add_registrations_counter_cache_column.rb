class AddRegistrationsCounterCacheColumn < ActiveRecord::Migration
  def self.up
    add_column :schools, :registrations_count, :integer, :default => 0

    schools = select_all "select * from schools"
    schools.each do |school|
      registrations_count = select_value "select count(*) from registrations where (registrations.school_id = #{school['id']})"

      update "update schools set registrations_count = #{registrations_count} where schools.id = #{school['id']}"
    end
  end

  def self.down
    remove_column :schools, :registrations_count
  end
end
