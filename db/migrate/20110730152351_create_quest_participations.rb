class CreateQuestParticipations < ActiveRecord::Migration
  def self.up
    create_table :quest_participations do |t|
      t.integer :user_id
      t.integer :quest_id
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :quest_participations
  end
end
