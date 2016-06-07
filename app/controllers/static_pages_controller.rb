class StaticPagesController < ApplicationController
	before_action :user_logged, only: [:home]
  before_action :admin_logged, only: [:balance]

  def home
    @cash = Kid.sum(:pay)
    @act = Income.where(owner: "inscripciones").take
    @diff = Kid.sum(:pay) - @act.amount
    @nkids = Kid.count
  end

  def saldar
    @cash = Kid.sum(:pay)
    Income.where(owner: "inscripciones").limit(1).update_all(amount: @cash)
    redirect_to home_path and return
  end

  def about
  end

  def contact
  end

  def balance
    @inc = Income.sum(:amount)
    @outc = Outcome.sum(:amount)
    @nkids = Kid.count
    @pkids = Kid.where(pay: 90).count
    @bal = @inc - @outc
  end

  def user_logged
  	unless user_logged_in?
  		redirect_to root_url and return
  	end
  end

  def admin_logged
    unless admin_logged_in?
      redirect_to home_path and return
    end
  end
end
