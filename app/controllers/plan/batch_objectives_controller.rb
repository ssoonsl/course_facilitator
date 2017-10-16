class Plan::BatchObjectivesController < ApplicationController

  def create
    batch = Batch.find(params[:batch_id])
    week_plan = WeekPlan.find(params[:week_plan_id])
    learning_objective_id = params[:learning_objective_id]
    batch_objective = BatchObjective.new(batch: batch, week_plan: week_plan, learning_objective_id: learning_objective_id)
    if batch_objective.save
      flash[:notice] = 'Learning objective added'
    else
      flash[:alert] = 'Learning objective already exists'
    end
    redirect_to plan_batch_dashboard_path(batch)
  end

  def destroy
    batch = Batch.find(params[:batch_id])
    batch_objective = BatchObjective.find(params[:id])
    batch_objective.destroy
    redirect_to plan_batch_dashboard_path(batch)
  end

  def dropdown
    batch = Batch.find(params[:batch_id])
    week_plan = WeekPlan.find(params[:week_plan_id])
    learning_objective = LearningObjective.find(params[:learning_objective])
    
    unless BatchObjective.exists?(week_plan: week_plan, learning_objective: learning_objective)
      batch_objective = BatchObjective.new(batch: batch, week_plan: week_plan, learning_objective: learning_objective)
      batch_objective.save
      flash[:notice] = 'Learning objective added'
    else
      flash[:alert] = 'Learning objective already exists'
    end
    redirect_to plan_batch_dashboard_path(batch)
  end

end
