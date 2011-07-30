class CreateQuestEntries < ActiveRecord::Migration
  def self.up
    create_table :quest_entries do |t|
      t.integer :user_id
      t.integer :quest_id
      t.integer :votes_count, :default => 0
      t.text :data

      t.timestamps
    end
  end

  def self.down
    drop_table :quest_entries
  end
end
