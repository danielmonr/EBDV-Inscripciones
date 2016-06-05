class StaticPagesController < ApplicationController
	before_action :user_logged, only: [:home]

  def home
    @cash = Kid.sum(:pay)
    @nkids = Kid.count
  end

  def about
  end

  def contact
  end

  def user_logged
  	unless user_logged_in?
  		redirect_to root_url
  	end
  end
end
