class CreateMeasurementTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :measurement_types do |t|
      t.string :name
      t.string :units
      t.text :description

      t.timestamps
    end
  end
end
