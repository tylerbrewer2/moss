class DashboardController < ApplicationController
  include SessionConcern
  before_action :find_user

  def index
  end
end
