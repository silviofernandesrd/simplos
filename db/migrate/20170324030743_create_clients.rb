class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.references :company
      t.string :name

      t.timestamps
    end
  end
end
