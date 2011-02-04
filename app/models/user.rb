class User < ActiveRecord::Base
  def self.find_or_create_by_auth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) ||
    create do |user|
      user.provider    = auth["provider"]
      user.uid         = auth["uid"]
      user.name        = auth["user_info"]["name"]
      user.twitter     = auth["user_info"]["nickname"]
      user.description = auth["user_info"]["description"]
    end
  end

  def self.partiers
    where(:partying => true).order('name asc')
  end

  def self.bostonians
    where(:partying => false).order('name asc')
  end
end
