class QuestEntry < ActiveRecord::Base

	serialize :data
	attr_accessor :latitude, :longitude, :submission

	default_value_for :latitude, 0
	default_value_for :longitude, 0

	belongs_to :user
	belongs_to :quest

	before_save :set_data
	
	def set_data
		data_hash = { :latitude => latitude, :longitude => longitude, :submission => submission}
		self.data = data_hash
	end

	def data_hash

	end
end
