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

  private

  def batch_params
    params.require(:batch_form).permit(batch_attributes: [:code, :start_date])
  end

end
