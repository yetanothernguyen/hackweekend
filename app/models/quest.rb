class Quest < ActiveRecord::Base

	has_enum :status, [:active, :done], :scopes => true

	default_value_for :status, :active

	attr_accessor :duration

	validates :title, :presence => true

	belongs_to :user
	belongs_to :city
	has_many :votes
	has_many :quest_entries

	def duration=(value)
		self.expired_at = value.to_i.days.from_now
	end
end
