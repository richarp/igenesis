class CreateAimagens < ActiveRecord::Migration
  def change
    create_table :aimagens do |t|
      t.string :direccion
      t.integer :galeria

      t.timestamps
    end
  end
end
