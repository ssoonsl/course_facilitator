class Plan::BatchesController < ApplicationController

  def index
    @batches = Batch.order(code: :asc)
  end

  def new
    @batch = Batch.new
    @batch_form = ::BatchForm.new(@batch)
  end

  def create
    @batch = Batch.new
    @batch_form = ::BatchForm.new(@batch, batch_params)
    if @batch_form.save
      redirect_to plan_batches_path
    else
      render :new
    end
  end

  def edit
    @batch = Batch.find(params[:id])
    @batch_form = ::BatchForm.new(@batch)
  end

  def update
    @batch = Batch.find(params[:id])
    @batch_form = ::BatchForm.new(@batch, batch_params)
    if @batch_form.update
      redirect_to plan_batches_path
    else
      render :edit
    end
  end

  def destroy
    @batch = Batch.find(params[:id])
    @batch.destroy
    redirect_to plan_batches_path
  end

  def dashboard
    @batch = Batch.find(params[:id])
    @learning_objectives = LearningObjective.order(name: :asc)
    @batch_objective = BatchObjective.new
    @week_plans = @batch.week_plans.order(week: :asc)
  end

  private

  def batch_params
    params.require(:batch_form).permit(batch_attributes: [:code, :start_date])
  end

end
