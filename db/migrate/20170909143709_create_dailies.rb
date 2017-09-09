class CreateDailies < ActiveRecord::Migration[5.1]
  def change
    create_table :dailies do |t|
      t.date :date, null: false, default: ''
      t.text :goal, null: false, default: ''
      t.text :morning, null: false, default: ''
      t.text :afterlunch, null: false, default: ''
      t.text :afternoon, null: false, default: ''

      t.timestamps
    end
  end
end
