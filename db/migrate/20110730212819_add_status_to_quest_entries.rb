class AddStatusToQuestEntries < ActiveRecord::Migration
  def self.up
    add_column :quest_entries, :status, :string
  end

  def self.down
    remove_column :quest_entries, :status
  end
end
