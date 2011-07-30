class AddBountyToQuests < ActiveRecord::Migration
  def self.up
    add_column :quests, :bounty, :integer
  end

  def self.down
    remove_column :quests, :bounty
  end
end
