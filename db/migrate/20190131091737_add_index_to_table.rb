class AddIndexToTable < ActiveRecord::Migration[5.2]
  def change
    add_index :transportations, [:supply_site_id, :demand_site_id],
      :unique => true
  end
end
