class WelcomeController < ApplicationController
  def index
  end

  def about
  end

  def map
  	@userinput = Userinput.new
  	@userinputs = Userinput.all

  	gon.userinput = @userinput

  end

  def more
  end
end
