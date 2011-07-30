class AddCpToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cp, :integer, :default => 0
  end

  def self.down
    remove_column :users, :cp
  end
end
