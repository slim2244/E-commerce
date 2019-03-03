class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:secret]

  def index
    @pictures = Picture.all
  end

  def secret
  end


end
