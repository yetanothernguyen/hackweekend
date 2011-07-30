class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.decimal :latitube
      t.decimal :longitude
      t.decimal :accuracy
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
