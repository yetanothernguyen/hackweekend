class User < ActiveRecord::Base

	has_many :authentications, :dependent => :delete_all do
		def facebook
			where(:provider => 'facebook').first
		end
	end

	has_many :quests
	has_many :positions

	def self.create_from_omniauth(omniauth)
		user = User.new
		user.email = omniauth["user_info"]["email"] rescue nil
    user.username ||= omniauth["user_info"]["nickname"] rescue nil
    user.name ||= omniauth["extra"]["user_hash"]["name"] rescue nil
    
		user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
		user.save
		
		return user
	end
end
