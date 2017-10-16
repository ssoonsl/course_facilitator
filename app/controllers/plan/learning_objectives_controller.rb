class Plan::LearningObjectivesController < ApplicationController

  def index
    @learning_objectives = LearningObjective.all
  end

  def new
    @learning_objective = LearningObjective.new
    session[:referer_before_new] ||= request.referer
  end

  def create
    @learning_objective = LearningObjective.new(learning_objective_params)
    if @learning_objective.save
      redirect_to session.delete(:referer_before_new)
    else
      render :new
    end
  end

  def edit
    @learning_objective = LearningObjective.find(params[:id])
  end

  def update
    @learning_objective = LearningObjective.find(params[:id])
    @learning_objective.update(learning_objective_params)
    if @learning_objective.save
      redirect_to plan_learning_objectives_path
    else
      render :edit
    end
  end

  def destroy
    @learning_objective = LearningObjective.find(params[:id])
    @learning_objective.destroy

    redirect_to plan_learning_objectives_path
  end

  private

  def learning_objective_params
    params.require(:learning_objective).permit(:name, :description)
  end

end
