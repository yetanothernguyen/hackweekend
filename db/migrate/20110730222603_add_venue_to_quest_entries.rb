class AddVenueToQuestEntries < ActiveRecord::Migration
  def self.up
    add_column :quest_entries, :venue, :string
  end

  def self.down
    remove_column :quest_entries, :venue
  end
end
