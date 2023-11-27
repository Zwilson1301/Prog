class DashboardController < ApplicationController
  def index
    @catigories = Catigory.all
    @softwares = Software.all
  end
end
