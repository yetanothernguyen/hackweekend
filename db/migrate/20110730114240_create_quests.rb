class CreateQuests < ActiveRecord::Migration
  def self.up
    create_table :quests do |t|
      t.integer :user_id
      t.string :title
      t.integer :city_id
      t.date :expired_at
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :quests
  end
end
