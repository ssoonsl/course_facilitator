class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.string :code, null: false, default: ''
      t.date :start_date, null: false, default: Date.new(2000,1,1)

      t.timestamps
    end
  end
end
