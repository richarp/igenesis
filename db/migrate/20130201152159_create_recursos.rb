class CreateRecursos < ActiveRecord::Migration
  def change
    create_table :recursos do |t|
      t.string :nombre
      t.string :tipodocumento

      t.timestamps
    end
  end
end
