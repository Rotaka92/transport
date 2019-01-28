class CreateDemandSites < ActiveRecord::Migration[5.2]
  def change
    create_table :demand_sites do |t|
      t.string :name
      t.float :demand

      t.timestamps
    end
  end
end
