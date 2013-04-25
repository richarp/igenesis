class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
      t.string :nombre
      t.date :fecha

      t.timestamps
    end
  end
end
