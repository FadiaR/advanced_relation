class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :L_name
      t.string :F_name
      t.timestamps
    end
  end
end
