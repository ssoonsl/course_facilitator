class CreateDailies < ActiveRecord::Migration[5.1]
  def change
    create_table :dailies do |t|
      t.references :week, foreign_key: true, null: false
      t.integer :day, null: false, default: 0
      t.date :date, null: false, default: Date.new(2000,1,1)
      t.text :goal, null: false, default: ''
      t.text :morning, null: false, default: ''
      t.text :afterlunch, null: false, default: ''
      t.text :afternoon, null: false, default: ''

      t.timestamps
    end
  end
end
