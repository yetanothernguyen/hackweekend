class AddVotesCountToQuests < ActiveRecord::Migration
  def self.up
    add_column :quests, :votes_count, :integer, :default => 0
  end

  def self.down
    remove_column :quests, :votes_count
  end
end
