class FirstQuestBadge < ActiveRecord::Base
	def self.columns() @columns ||= []; end
   
  def self.column(name, sql_type = nil, default = nil, null = true)  
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end  
    
  column :name, :string
  column :description, :string
  column :image_filename, :string

  def self.name
  	"First Quest"
  end

  def self.description
  	"Submitted a quest"
  end

  def self.image_filename
  	"first-quest.png"
  end
end
