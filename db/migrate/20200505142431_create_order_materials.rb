class CreateOrderMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :order_materials do |t|
      t.references :order
      t.references :material
      t.integer :count
      t.timestamps
    end
  end
end
