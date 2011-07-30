require 'spec_helper'

describe AjaxController do

	describe "GET 'new'" do

		describe "operation#location" do
			let(:user) { Factory(:user) }

			before do
				sign_in(user)
			end

			it "should create new location" do
				get 'new', :operation => 'location', :longitude => '-77.037852', :latitude => '38.898556'
				response.should be_success
				user.positions.count.should == 1
				user.positions.first.longitude.should == -77.037852
				user.positions.first.latitude.should == 38.898556
			end
		end
	end

end
