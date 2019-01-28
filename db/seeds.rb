# db/seeds.rb

# (i, a(i))
SupplySite.create(name: 'Stuttgart', capacity: 40)
SupplySite.create(name: 'Hannover', capacity: 50)
SupplySite.create(name: 'Frankfurt', capacity: 42)

# (j, n(j))
DemandSite.create(name: 'Bielefeld', demand: 30)
DemandSite.create(name: 'München', demand: 34)
DemandSite.create(name: 'Köln', demand: 44)
DemandSite.create(name: 'Berlin', demand: 24)

# SupplySite 1 (i, j, c(i,j))
Transportation.create(supply_site_id: 1, demand_site_id: 1, cost_factor: 12)
Transportation.create(supply_site_id: 1, demand_site_id: 2, cost_factor: 4)
Transportation.create(supply_site_id: 1, demand_site_id: 3, cost_factor: 12)
Transportation.create(supply_site_id: 1, demand_site_id: 4, cost_factor: 14)

# SupplySite 2 (i, j, c(i,j))
Transportation.create(supply_site_id: 2, demand_site_id: 1, cost_factor: 8)
Transportation.create(supply_site_id: 2, demand_site_id: 2, cost_factor: 18)
Transportation.create(supply_site_id: 2, demand_site_id: 3, cost_factor: 10)
Transportation.create(supply_site_id: 2, demand_site_id: 4, cost_factor: 6)

# Supply Site 3 (i, j, c(i,j))
Transportation.create(supply_site_id: 3, demand_site_id: 1, cost_factor: 16)
Transportation.create(supply_site_id: 3, demand_site_id: 2, cost_factor: 16)
Transportation.create(supply_site_id: 3, demand_site_id: 3, cost_factor: 2)
Transportation.create(supply_site_id: 3, demand_site_id: 4, cost_factor: 12)
        
Problem.create(ofv: nil)