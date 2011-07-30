class CreateFirstQuests < ActiveRecord::Migration
  def self.up
    create_table :first_quests do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :first_quests
  end
end
