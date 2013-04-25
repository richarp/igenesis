class CreateMinisterios < ActiveRecord::Migration
  def change
    create_table :ministerios do |t|
      t.string :nombre
      t.integer :encargado
      t.text :mision
      t.text :vision

      t.timestamps
    end
  end
end
