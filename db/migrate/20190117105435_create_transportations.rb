class CreateTransportations < ActiveRecord::Migration[5.2]
  def change
    create_table :transportations do |t|
      t.references :supply_site, foreign_key: true
      t.references :demand_site, foreign_key: true
      t.float :cost_factor
      t.float :transported_amount

      t.timestamps
    end
  end
end
