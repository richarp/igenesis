class CreateEventos < ActiveRecord::Migration
  def change
    create_table :eventos do |t|
      t.string :titulo
      t.text :detalle
      t.date :fechai
      t.date :fechaf

      t.timestamps
    end
  end
end
