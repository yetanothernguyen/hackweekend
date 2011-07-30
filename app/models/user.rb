class User < ActiveRecord::Base

	has_many :authentications, :dependent => :delete_all do
		def facebook
			where(:provider => 'facebook').first
		end
	end

	has_many :quests
	has_many :quest_participations
	has_many :quest_entries
	has_many :positions
	has_many :votes
	has_many :achievements

	def self.create_from_omniauth(omniauth)
		user = User.new
		user.email = omniauth["user_info"]["email"] rescue nil
    user.username ||= omniauth["user_info"]["nickname"] rescue nil
    user.name ||= omniauth["extra"]["user_hash"]["name"] rescue nil
    
		user.authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
		user.save
		
		return user
	end

	def participated?(quest)
		!self.quest_participations.find_by_quest_id(quest.id).nil?
	end

	def voted?(votable)
		!self.votes.where(:votable_type => votable.class.to_s,
										 :votable_id => votable.id).first.nil?
	end

	def submitted?(quest)
		!self.quest_entries.find_by_quest_id(quest.id).nil?
	end

	def award_badge!(badge)
		self.achievements.find_or_create_by_badge(badge) # TODO: badge that can be rewarded multiple times
	end
end
