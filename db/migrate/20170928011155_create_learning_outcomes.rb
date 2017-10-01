class CreateLearningOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :learning_outcomes do |t|
      t.references :learning_objective, foreign_key: true
      t.text :description, null: false, default: ''

      t.timestamps
    end
  end
end
