class CreateBatchObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :batch_objectives do |t|
      t.references :batch, null: false
      t.references :week_plan
      t.references :day_plan
      t.references :learning_objective, null: false
      t.references :learning_outcome

      t.timestamps
    end
  end
end
