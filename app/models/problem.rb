# encoding: utf-8
class Problem < ApplicationRecord
  def self.solve_with_gams
    suppliers = SupplySite.all
    demanders = DemandSite.all
    transportations = Transportation.all

    num_suppliers = suppliers.count
    num_demanders = demanders.count
    #num_transportations = transportations.count



    File.open('GAMS/include.inc', 'w') do |f|
      f.write("set i /1*#{num_suppliers}/;\n")
      f.write("set j /1*#{num_demanders}/;\n")

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
        f.write("c('#{supplier_id}','#{demander_id}') = #{cost}; \n")
      end
    end



    def self.read_results
      if File.open("GAMS/gams2.put")
        lines = File.readlines("GAMS/gams2.put")
        ofv = lines[0].to_f
        z = Problem.first
        z.ofv = ofv
        z.save

        lines = File.open("GAMS/gams1.put")
        lines.each do |l|
          line = l.split(' ')
          #[1,1,4.00]
          i = line[0].to_i
          j = line[1].to_i
          x = line[2].to_f
          trans = Transportation.find_by(supply_site_id: i, demand_site_id: j)
          trans.transported_amount = x
          trans.save
        end
      end
    end

    system('gams GAMS/Transportproblem.gms')
    true
  end
end
