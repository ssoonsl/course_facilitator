class CreateDayPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :day_plans do |t|
      t.references :week_plan, foreign_key: true, null: false
      t.integer :day, null: false, default: 0
      t.text :morning, null: false, default: ''
      t.text :afterlunch, null: false, default: ''
      t.text :afternoon, null: false, default: ''

      t.timestamps
    end
  end
end
