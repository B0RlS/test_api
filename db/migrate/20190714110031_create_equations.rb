class CreateEquations < ActiveRecord::Migration[5.2]
  def change
    create_table :equations do |t|
      t.integer :a_coefficient
      t.integer :b_coefficient
      t.integer :c_coefficient

      t.timestamps
    end
  end
end
