program embankment_slope_stability

implicit none

! Declare variables
real :: angle_of_internal_friction, unit_weight, height, slope_ratio
real :: horizontal_force, vertical_force, FoS, pi

pi = 3.1415927

! Input data for angle of internal friction, unit weight, height and slope ratio
print *, "Enter the angle of internal friction (in degrees):"
read *, angle_of_internal_friction
print *, "Enter the unit weight of the soil (in kN/m3):"
read *, unit_weight
print *, "Enter the height of the embankment (in m):"
read *, height
print *, "Enter the slope ratio (H:V):"
read *, slope_ratio

! Convert angle of internal friction to radians
angle_of_internal_friction = angle_of_internal_friction * pi / 180

! Calculate horizontal and vertical forces
horizontal_force = height * unit_weight * tan(angle_of_internal_friction)
vertical_force = horizontal_force / slope_ratio

! Calculate factor of safety
FoS = vertical_force / (unit_weight * height)

! Print result
print *, "The factor of safety of the embankment slope is: ", FoS

end program embankment_slope_stability
