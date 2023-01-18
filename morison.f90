program morison_pile

implicit none

! Declare variables
real :: velocity, density, diameter, length, drag
real, parameter :: k = 0.22 ! Drag coefficient for circular piles
    
! Input data for velocity, density, diameter, and length of pile
print *, "Enter the velocity of the fluid (in m/s):"
read *, velocity
print *, "Enter the density of the fluid (in kg/m^3):"
read *, density
print *, "Enter the diameter of the pile (in m):"
read *, diameter
print *, "Enter the length of the pile (in m):"
read *, length
    
! Calculate drag using Morison's formula
drag = k * density * velocity**2 * diameter * length
    
! Print result
print *, "The drag force on the pile is: ", drag, " N"
    
end program morison_pile