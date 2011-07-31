class Vote < ActiveRecord::Base

	belongs_to :votable, :polymorphic => true

	after_create :count_vote

	def count_vote
		self.votable.class.update_counters(self.votable.id, :votes_count => self.vote)
		#self.votable.votes_count += self.vote
		#return if self.votable.votes_count == 0
		#self.votable.save

		User.update_counters(self.votable.user.id, :cp => self.vote) if self.vote > 0
	end
end
