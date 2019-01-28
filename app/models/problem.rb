class Problem < ApplicationRecord
  def self.solve_with_gams
    suppliers = SupplySite.all
    demanders = DemandSite.all
    transportations = Transportation.all
    
    num_suppliers = suppliers.count
    num_demanders = demanders.count
    num_transportations = transportations.count
    
    
    
    File.open('GAMS/include.inc', 'w') do |f|
      f.write("set i /1*#{num_suppliers}/;\n")
      f.write("set i /1*#{num_demanders}/;\n")
      
      suppliers.each do |s|
        id = s.id
        capacity = s.capacity
        f.write("A('#{id}') = #{capacity}; \n")
      end
      
      demanders.each do |d|
        id = d.id
        demand = d.demand
        f.write("N('#{id}') = #{demand}; \n")
      end
      
      # c(i, j)
      transportations.each do |t|
        supplier_id = t.supply_site_id
        demander_id = t.demand_site_id
        cost = t.cost_factor
        f.write("c('#{supplier_id}','#{demander_id}') = '#{cost}'; \n")
      
      end
    end
  end
end
