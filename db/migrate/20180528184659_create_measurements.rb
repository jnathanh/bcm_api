class CreateMeasurements < ActiveRecord::Migration[5.2]
  def change
    create_table :measurements do |t|
      t.references :checkpoint, foreign_key: true
      t.references :measurement_type, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
