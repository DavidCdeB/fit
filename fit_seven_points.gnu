#
set termoption enhanced
set encoding utf8

## CRYSTAL VALUES:

E0=-1883.01544309
V0=126.4025
B0=32.13
B0_prime=-0.95
#####


FIT_LIMIT=1e-10

f0=(9.0/16.0)*(V0*B0)
f1(x)=(((V0/x)**(2.0/3.0)-1)**3)*B0_prime
f2(x)=((V0/x)**(2.0/3.0)-1)**2
f3(x)=(6.0-4.0*(V0/x)**(2.0/3.0))
#E_Birch_Murnaghan(x)= E0+ (2.293710449E+17)*(1E-21)*( f0 * (f1(x) + f2(x)*f3(x)))

E_Birch_Murnaghan(x)= E0+ (2.293710449E+17)*(1E-21)*( (9.0/16.0)*(V0*B0) * (  (((V0/x)**(2.0/3.0)-1)**3)*B0_prime  + ((V0/x)**(2.0/3.0)-1)**2  *  (6.0-4.0*(V0/x)**(2.0/3.0))  ))


# x----> V the volume

set title "Calcite VI"
set xlabel "Volume (Å^3)"
set ylabel 'Energy (a.u.)'

set format y "%9.4f"
set xrange [123:138]
set yrange [-1883.0160:-1883.0115]


fit E_Birch_Murnaghan(x)  "crystal_energy_volume_seven_first_points.dat" via B0_prime,B0,V0,E0
#plot E_Birch_Murnaghan(x),'crystal_energy_volume_seven_first_points.dat'


plot   E_Birch_Murnaghan(x)  with line lt -1 lw 3

replot "crystal_energy_volume_seven_first_points.dat" with linespoints lt 3 lw 3  pt 9



#set term portrait eps
set term post enh color eps
set output "fit_seven_points.eps"
replot
