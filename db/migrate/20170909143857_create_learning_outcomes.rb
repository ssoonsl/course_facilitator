class CreateLearningOutcomes < ActiveRecord::Migration[5.1]
  def change
    create_table :learning_outcomes do |t|
      t.string :description, null: false, default: ''
      t.integer :week, null: false, default: 0

      t.timestamps
    end
  end
end
