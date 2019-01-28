class CreateSupplySites < ActiveRecord::Migration[5.2]
  def change
    create_table :supply_sites do |t|
      t.string :name
      t.float :capacity

      t.timestamps
    end
  end
end
