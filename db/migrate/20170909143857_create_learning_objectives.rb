class CreateLearningObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :learning_objectives do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''

      t.timestamps
    end
  end
end
