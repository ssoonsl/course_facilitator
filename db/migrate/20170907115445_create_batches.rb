class CreateBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :batches do |t|
      t.string :code, null: false, default: ''

      t.timestamps
    end
  end
end
