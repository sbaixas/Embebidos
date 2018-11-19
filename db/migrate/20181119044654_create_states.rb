class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.float :temp
      t.float :hum
      t.float :air
      t.float :smk
      t.string :rgb1
      t.string :rbg2
      t.integer :c
      t.integer :st1
      t.integer :st2
      t.integer :s1
      t.integer :s2
      t.integer :s3

      t.timestamps
    end
  end
end
