class CreateEquations < ActiveRecord::Migration[5.2]
  def change
    create_table :equations do |t|
      t.json :coefficients

      t.timestamps
    end
  end
end
