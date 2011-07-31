class ChangeUidInAuthentications < ActiveRecord::Migration
  def self.up
  	change_column :authentications, :uid, :string
  end

  def self.down
  end
end
