class Plan::WeeksController < ApplicationController

  before_action :authenticate_instructor!

  def index
    @weeks = Week.all
  end

end
