class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def map
    @userinput = Userinput.new
    if params[:origin] == nil
      gon.userinput = @userinput
    else
      @user_input = Userinput.last
      gon.userinput = @user_input
    end

  	@userinputs = Userinput.all

  	

  end

  def more
  end
end
