class TopController < ApplicationController
  def index
    @materials = Material.all
  end
end
