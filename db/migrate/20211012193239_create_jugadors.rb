class CreateJugadors < ActiveRecord::Migration[6.1]
  def change
    create_table :jugadors do |t|
      t.string :nombre
      t.references :equipo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
