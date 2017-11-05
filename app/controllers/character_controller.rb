class CharacterController < ApplicationController
  def index
    @characters = current_user.characters
  end

  def show
  end
end
