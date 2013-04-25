class CreateCapacitacions < ActiveRecord::Migration
  def change
    create_table :capacitacions do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fechainicio
      t.date :fechafinal

      t.timestamps
    end
  end
end
