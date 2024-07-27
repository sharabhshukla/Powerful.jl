using Powerful
using Test
using Dates
using Test
using Unitful
using Unitful: Unitful, @u_str, J, W, hr, uconvert

@testset "Powerful.jl" begin
    @testset "Units" begin
        @testset "Period Time Types" begin
            time_stamps = collect(now()-Dates.Day(1):Dates.Hour(1):now())
            offsets = time_stamps - time_stamps[1]

            x = Dates.Minute.(offsets)
            y = uconvert.(u"minute", offsets)
            @test x == y
        end
        @testset "Power & Energy Related Unit" begin
            @test 1u"Wh" == 1u"W*hr"
            @test 1u"Wh" == 3600u"J"
            @test 1u"VARh" == 3600u"J"
            @test 100u"USDPerMWh" == 100u"USD/(MW*hr)"
            @test 1u"USDPerKWh" == 1u"USD/(kW*hr)"
            @test 1u"BTU" == 1055.06u"J"
            @test 1u"Therm" == 105506000u"J"
            @test 1u"eV" == 1.602176634e-19u"J"
            @test 1u"cal" == 4.184u"J"
            @test 1u"hp" == 745.7u"W"
            @test 1u"VA" == 1u"V*A"
            # test kilo and Mega versions of the above 6 units, added recently
            @test 1u"kWh" == 1000u"Wh"
            @test 1u"MWh" == 1000u"kWh"
            @test 1u"kVARh" == 1000u"VARh"
            @test 1u"MVARh" == 1000u"kVARh"
            @test 1u"kVA" == 1000u"VA"
            @test 1u"MVA" == 1000u"kVA"
            @test 1u"MVA" == 1000000u"VA"
            # test Ah and AhJ units
            @test 1u"Ah" == 3600u"C"
            @test 1u"AhJ" == 3600u"J"
            # test the milli versions of the above 2 units
            @test 1u"mAh" == 0.001u"Ah"
            @test 1u"mAh" == 3.6u"C"
            @test 1u"mAhJ" == 0.001u"AhJ"
            @test 1u"mAhJ" == 3.6u"J"
            # test the BigMac unit
            @test 1u"BigMac" == 1.075e+6u"J"
            # test the USDPerBTU unit
            @test 1u"USDPerBTU" == 1u"USD/BTU"
        end
    end

end
