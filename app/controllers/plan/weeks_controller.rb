class Plan::WeeksController < ApplicationController

  before_action :authenticate_admin!

  def index
    @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
    @learning_outcomes = LearningOutcome.all
  end

end
