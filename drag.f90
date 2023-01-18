program drag_calculation

implicit none

    ! Declare variables
    real :: velocity, density, drag_coefficient, reference_area, drag
    
    ! Input data for velocity, density, drag coefficient, and reference area
    print *, "Enter the velocity of the fluid (in m/s):"
    read *, velocity
    print *, "Enter the density of the fluid (in kg/m^3):"
    read *, density
    print *, "Enter the drag coefficient:"
    read *, drag_coefficient
    print *, "Enter the reference area of the structure (in m^2):"
    read *, reference_area
    
    ! Calculate drag
    drag = 0.5 * density * velocity**2 * drag_coefficient * reference_area
    
    ! Print result
    print *, "The drag force on the structure is: ", drag, " N"
    
    end program drag_calculation
    