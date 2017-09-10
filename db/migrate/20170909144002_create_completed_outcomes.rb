class CreateCompletedOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :completed_outcomes do |t|
      t.references :batch, foreign_key: true, null: false
      t.references :learning_outcome, foreign_key: true, null: false
      t.references :daily, foreign_key: true, null: false, default: ''

      t.timestamps
    end
  end
end
