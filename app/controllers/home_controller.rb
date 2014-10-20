class HomeController < ApplicationController
  def index
    @section = Section.all
  end
end
