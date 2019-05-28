class CreateEmpanadas < ActiveRecord::Migration[5.2]
  def change
    create_table :empanadas do |t|
      t.string :ingrediente_ppal
      t.string :ingrediente_secundario
      t.integer :cantidad

      t.timestamps
    end
  end
end
