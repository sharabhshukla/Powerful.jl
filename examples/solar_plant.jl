using Powerful: USDPerKWh, USDPerMWh, Wh, kWh, USD
using Unitful: hr, W


solar_plant_capacity = 5000kWh

# The cost of electricity from the solar plant
solar_plant_cost = 0.05USDPerKWh

# Revenue from solar plant in a year
time_plant_operational = 8760hr
total_energy_produced = 100W * time_plant_operational
revenue = total_energy_produced * solar_plant_cost