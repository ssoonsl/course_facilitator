class CreateWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :weeks do |t|
      t.references :batch, foreign_key: true
      t.integer :number
    end
  end
end
