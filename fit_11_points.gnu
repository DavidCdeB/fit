#

# Intitial candidates parameters:
E0=-1883.02163780
V0=127.0675
B0=76.63
B0_prime=4.53


FIT_LIMIT=1e-10

# Birch Murnaghan (1947) EOS:
E_Birch_Murnaghan(x)= E0+ (2.293710449E+17)*(1E-21)*( (9.0/16.0)*(V0*B0) * (  (((V0/x)**(2.0/3.0)-1)**3)*B0_prime  + ((V0/x)**(2.0/3.0)-1)**2  *  (6.0-4.0*(V0/x)**(2.0/3.0))  ))

fit E_Birch_Murnaghan(x)  "crystal_energy_volume_all_points.dat" via B0_prime,B0,V0,E0

save variable "Parameters_fit_11_points.gnu"

plot E_Birch_Murnaghan(x),'crystal_energy_volume_all_points.dat'
#set term portrait eps
set term post enh color eps
set output "fit_11_points.eps"
replot
