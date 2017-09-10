class Admin::BatchesController < ApplicationController

  before_action :authenticate_instructor!

  def index
    @batches = Batch.all
  end

end
