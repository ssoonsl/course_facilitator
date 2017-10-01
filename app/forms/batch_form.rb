class BatchForm

  include ActiveModel::Model

  attr_reader :batch

  delegate :attributes=, to: :batch, prefix: true

  validate :batch_is_valid?

  def initialize(batch, params={})
    @batch = batch
    super(params)
  end

  def save
    if valid?
      @batch.save
      populate_week_and_day_plans
    else
      false
    end
  end

  private

  def batch_is_valid?
    errors.add(:base, 'invalid batch') unless batch.valid?
  end

  def populate_week_and_day_plans
    for i in 1..10 do
      week = WeekPlan.create(batch: @batch, week: i, start_date: @batch.start_date + i.weeks)
      for j in 1..5 do
        DayPlan.create(week_plan: week, day: j)
      end
    end
  end

end
