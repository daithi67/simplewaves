program linear_wave_theory

implicit none

! Declare variables
real :: water_depth, wave_height, wave_period, wave_velocity, structure_width, structure_height
real :: wave_force, horizontal_force, vertical_force, g, pi, density_water

pi = 3.1415927
g = 9.8
density_water = 1025

! Input data for water depth, wave height, wave period, structure width and structure height
print *, "Enter the water depth (in m):"
read *, water_depth
print *, "Enter the wave height (in m):"
read *, wave_height
print *, "Enter the wave period (in s):"
read *, wave_period
print *, "Enter the structure width (in m):"
read *, structure_width
print *, "Enter the structure height (in m):"
read *, structure_height

! Calculate wave velocity
wave_velocity = (g * wave_period) / (2 * pi)

! Calculate wave force using linear wave theory
wave_force = (density_water * g * wave_height**2) / (2 * (1 + (structure_height / water_depth)))
horizontal_force = (wave_force * structure_width) / 2
vertical_force = (wave_force * structure_height) / 2

! Print results
print *, "The horizontal wave force on the structure is: ", horizontal_force, " N"
print *, "The vertical wave force on the structure is: ", vertical_force, " N"

end program linear_wave_theory
