# Powerful.jl

**Powerful.jl** is a Julia package that extends the `Unitful` library with additional units specifically for energy and power measurements. This module provides a range of energy, power, and cost units, enhancing the capabilities for scientific and engineering calculations.

## Features

- **Energy Units**:
  - **WattHour (Wh)**: Measures energy storage or consumption.
  - **VARHour (VARh)**: Measures reactive energy, essential in electrical systems.
  - **BTU**: British Thermal Unit, commonly used in energy contexts.
  - **Therm**: Larger unit for measuring heat energy.
  - **calorie (cal)**: Measures energy, often used in food energy content.

- **Power Units**:
  - **Horsepower (hp)**: Measures power, used in engines and machinery.
  - **VoltAmpere (VA)**: Measures apparent power in AC circuits.

- **Electrical Units**:
  - **AmpereHour (Ah)**: Measures electrical charge.
  - **AmpereHour-Joules (AhJ)**: Combines charge with energy measurement.

- **Cost Units**:
  - **USDPerMWh**: Cost in USD per Megawatt-Hour.
  - **USDPerKWh**: Cost in USD per Kilowatt-Hour.
  - **USDPerBTU**: Cost in USD per BTU.

- **Miscellaneous Units**:
  - **BigMac**: Represents energy equivalent to a Big Mac, fun unit for comparative purposes.

## Installation

To install Powerful.jl, use Julia’s package manager. Open the Julia REPL and run:

```julia
using Pkg
Pkg.add("Powerful")
```

## Usage

Once installed, you can use Powerful.jl as follows:

```julia
using Powerful

# Convert 100 WattHours to Joules
wh = 100 * Unitful.Wh
joules = uconvert(Unitful.J, wh)
println("100 Wh is equivalent to $joules Joules.")

# Calculate cost per Megawatt-Hour
cost_per_mwh = 50 * Unitful.USDPerMWh
println("Cost per MWh: $cost_per_mwh.")

# Convert 1 BigMac to Joules
bigmac_energy = 1 * Unitful.BigMac
bigmac_joules = uconvert(Unitful.J, bigmac_energy)
println("1 BigMac is equivalent to $bigmac_joules Joules.")
```

Development
To contribute or modify the package, clone the repository and use Julia’s development tools:

```julia
git clone https://github.com/yourusername/Powerful.jl
cd Powerful.jl
using Pkg
Pkg.develop(".")
```
## Documentation
For more detailed documentation, including descriptions of all units and their usage, refer to the documentation (replace with actual URL if available).

## License
Powerful.jl is licensed under the MIT License. See the LICENSE file for details.

## Acknowledgments
Inspired by Unitful and UnitfulUS.jl for unit handling in Julia.
For questions or support, please open an issue on the GitHub repository. THis is a learning experience, suggestions/corrections are always welcome.

[![Build Status](https://github.com/SharabhS/Powerful.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/SharabhS/Powerful.jl/actions/workflows/CI.yml?query=branch%3Amaster)


