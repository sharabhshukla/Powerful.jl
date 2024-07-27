module Powerful

import UnitfulAssets: USD
import Unitful
import Unitful: J, W, hr, 𝐋, 𝐌, 𝐓, V, A, C
using Unitful: @unit, @derived_dimension, @dimension, @refunit, @u_str, uconvert, Quantity
export asqtype, fustrip, UnitfulMissing

# Power Units
@derived_dimension PowerHour 𝐋^2*𝐌*𝐓^-2
@unit Wh "Wh" WattHour 3600J true

@derived_dimension ReactivePowerHour 𝐋^2*𝐌*𝐓^-2
@unit VARh "VARh" VARHour 3600J true

# Define the unit USDPerMWh
@unit USDPerMWh "USDPerMWh" "USD/MWh" USD/(1000000 * W * hr) false

# DEfine the unit USDPerKWh
@unit USDPerKWh "USDPerKWh" "USD/KWh" USD/(1000 * W * hr) false

# Define BTU as a unit
@unit BTU "BTU" BTU 1055.06J true

# Define Therm
@unit Therm "Therm" Therm 105506000J true

# ampers hour as a unit
@unit Ah "Ah" AmpereHour 3600C true

# ampere hour as units in J
@unit AhJ "AhJ" AmpereHourJ 3600J true

# Define calories as a unit
@unit cal "cal" calorie 4.184J true

# Define horsepower as a unit
@unit hp "hp" horsepower 745.7W true

# Define VA as a unit
@unit VA "VA" VoltAmpere 1V*1A true

# define 1 BigMac as 1.31e+6 J
@unit BigMac "BigMac" toast 1.075e+6J true

# Define USDPerBTU as a unit
@unit USDPerBTU "USDPerBTU" "USD/BTU" USD/(1055.06 * J) false


# Some gymnastics needed to get this to work at run-time.
# Sourced from https://github.com/ajkeller34/UnitfulUS.jl
const localunits = Unitful.basefactors
const localpromotion = Unitful.promotion
function __init__()
    merge!(Unitful.basefactors, localunits)
    merge!(Unitful.promotion, localpromotion)  # only if you've used @dimension
    Unitful.register(Powerful)
end

end
