class CreateCamaras < ActiveRecord::Migration
  def change
    create_table :camaras do |t|
      t.string :ubicacion

      t.timestamps
    end
  end
end
