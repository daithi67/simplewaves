program linear_wave_theory_bed_velocity

    implicit none
    
    ! Declare variables
    real :: water_depth, wave_height, wave_period, wave_velocity, g, pi
    real :: bed_velocity

    pi =  3.1415927
    g = 9.8
    
    ! Input data for water depth, wave height, and wave period
    print *, "Enter the water depth (in m):"
    read *, water_depth
    print *, "Enter the wave height (in m):"
    read *, wave_height
    print *, "Enter the wave period (in s):"
    read *, wave_period
    
    ! Calculate wave velocity
    wave_velocity = (g * wave_period) / (2 * pi)
    
    ! Calculate bed velocity using linear wave theory
    bed_velocity = (wave_velocity * wave_height) / (2 * water_depth)
    
    ! Print result
    print *, "The bed velocity of the wave is: ", bed_velocity, " m/s"
    
    end program linear_wave_theory_bed_velocity
    