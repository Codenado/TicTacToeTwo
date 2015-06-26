class GameController < ApplicationController
  def show
  end

  def create
  	@game = Game.create
  	9.times do |x|
  		@game.squares.create(postion: x)
  	end	
  end
end
