class CharacterController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
  end
end
