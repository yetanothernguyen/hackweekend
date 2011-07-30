class Quest < ActiveRecord::Base

	has_enum :status, [:active, :done], :scopes => true

	default_value_for :status, :active

	attr_accessor :duration

	belongs_to :user
	belongs_to :city

	def duration=(value)
		self.expired_at = value.to_i.days.from_now
	end
end
