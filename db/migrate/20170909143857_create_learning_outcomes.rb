class CreateLearningOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :learning_outcomes do |t|
      t.string :description, null: false, default: ''

      t.timestamps
    end
  end
end
