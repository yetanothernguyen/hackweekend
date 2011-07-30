class AjaxController < ApplicationController
  def new
  	case params[:operation]
  	when 'location'
  		unless current_user.nil?
  			current_user.positions.create(:longitude => params[:longitude],
  																		:latitude => params[:latitude])
  		end
  		render :text => 'Ok', :status => '200'
  	end
  end

end
