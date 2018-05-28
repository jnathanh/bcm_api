class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :checkpoint, foreign_key: true
      t.references :measurement_type, foreign_key: true
      t.string :reference

      t.timestamps
    end
  end
end
