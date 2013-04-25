class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.string :apellido
      t.date :fechanac
      t.string :sexo

      t.timestamps
    end
  end
end
