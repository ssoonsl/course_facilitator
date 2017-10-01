class CreateWeekPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :week_plans do |t|
      t.references :batch, foreign_key: true, null: false
      t.integer :week, null: false, default: 0
      t.date :start_date, null: false, default: Date.new(2000,1,1)

      t.timestamps
    end
  end
end
