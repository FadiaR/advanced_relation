class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :L_name
      t.string :F_name
      t.string :Specialty
      t.integer	:Postal_code
      
      t.timestamps
    end
  end
end
