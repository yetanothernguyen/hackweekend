class CreatePositions < ActiveRecord::Migration
  def self.up
    create_table :positions do |t|
      t.decimal :latitude, :precision => 10, :scale => 6
      t.decimal :longitude, :precision => 10, :scale => 6
      t.decimal :accuracy, :precision => 10, :scale => 2
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :positions
  end
end
