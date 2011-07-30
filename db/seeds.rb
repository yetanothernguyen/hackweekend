# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

cities = [
	{:name =>"Kuala Lumpur", :state =>"Kuala Lumpur"},
	{:name =>"Bangsar", :state =>"Kuala Lumpur"},
	{:name =>"Petaling Jaya", :state =>"Selangor"},
	{:name =>"Klang", :state =>"Selangor"},
  {:name =>"Damansara Utama", :state =>"Selangor"},
  {:name =>"Puchong", :state =>"Selangor"},
  {:name =>"Cyberjaya", :state =>"Selangor"},
  {:name =>"Shah Alam", :state =>"Selangor"},
  {:name =>"Subang Jaya", :state =>"Selangor"},
  {:name =>"Seri Kembangan", :state =>"Selangor"},
  {:name =>"Sri Petaling", :state =>"Kuala Lumpur"},
  {:name =>"Damansara Heights", :state =>"Kuala Lumpur"},
  {:name =>"Putrajaya", :state =>"Kuala Lumpur"},
  {:name =>"Ampang", :state =>"Kuala Lumpur"}
]

cities.each { |c| City.find_or_create_by_name(c) }
