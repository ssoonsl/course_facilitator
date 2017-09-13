class Plan::DailiesController < ApplicationController

  def edit
    @learning_outcomes = LearningOutcome.all
    @week = Week.find(params[:week_id])
    @daily = Daily.find(params[:id])
    @dailies = @week.dailies.order('day ASC')
  end

  def update
    @daily = Daily.find(params[:id])
    @daily.update(daily_params)
    if @daily.save
      redirect_to plan_week_path(id: @daily.week)
    else
      render :edit
    end
  end

  def link_outcome
    @daily = Daily.find(params[:daily])
    @learning_outcome = LearningOutcome.find(params[:learning_outcome])
    CompletedOutcome.create(daily: @daily, learning_outcome: @learning_outcome)
  end

  private

  def daily_params
    params.require(:daily).permit(:goal, :morning, :afterlunch, :afternoon)
  end

end
