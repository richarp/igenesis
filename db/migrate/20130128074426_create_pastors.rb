class CreatePastors < ActiveRecord::Migration
  def change
    create_table :pastors do |t|
      t.string :nombre
      t.string :apellidos
      t.string :cargo

      t.timestamps
    end
  end
end
