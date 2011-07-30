class Vote < ActiveRecord::Base

	belongs_to :votable, :polymorphic => true

	after_create :count_vote

	def count_vote
		self.votable.votes_count += self.vote
		return if self.votable.votes_count == 0
		self.votable.save
	end
end
