class QuestParticipation < ActiveRecord::Base

	has_enum :status, [:active, :done], :scopes => true
	default_value_for :status, :active
	
	belongs_to :user
	belongs_to :quest
end
