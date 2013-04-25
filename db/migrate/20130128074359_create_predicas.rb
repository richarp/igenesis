class CreatePredicas < ActiveRecord::Migration
  def change
    create_table :predicas do |t|
      t.string :titulo
      t.text :mensaje
      t.string :autor

      t.timestamps
    end
  end
end
