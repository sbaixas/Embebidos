class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.float :temperature
      t.float :humidity
      t.float :air_quality
      t.float :smoke
      t.string :rgb_1
      t.string :rbg_2
      t.integer :count
      t.integer :stepper_1
      t.integer :stepper_2
      t.integer :servo_1
      t.integer :servo_2
      t.integer :servo_3

      t.timestamps
    end
  end
end
