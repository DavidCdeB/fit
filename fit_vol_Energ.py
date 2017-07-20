# 

import numpy as np
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt


def BM(x, E0, V0, B0, B0_prime):

	return  E0+ (2.293710449E+17)*(1E-21)*( (9.0/16.0)*(V0*B0) * (  (((V0/x)**(2.0/3.0)-1.0)**3.0)*B0_prime  + ((V0/x)**(2.0/3.0)-1)**2  *  (6.0-4.0*(V0/x)**(2.0/3.0))  ))


V, E = np.loadtxt('./forfit.dat').T

print 'V = ', V
print 'E = ', E

# Initial candidates:
E0_init = -1883.02163780
V0_init = 127.0675
B0_init = 76.63
B0_prime_init = 4.53

init_vals = [E0_init, V0_init, B0_init, B0_prime_init]  
popt, pcov = curve_fit(BM, V, E, p0=init_vals)

print 'popt = ', popt
print 'pcov = ', pcov

plt.plot(V, BM(V, *popt), 'r-', label='fit')

#plt.scatter(V, E)
plt.plot(V, E, 'bo', label='data')
#x_mesh = np.linspace(230, 275, 2000)
#plt.plot(x_mesh, -9.41492103e+02 +  1.47345011e-02*x_mesh + -8.87035634e-05*x_mesh**2 ) # This if you want to plot the function
#plt.ylim()
#plt.xlim(122, 140)
plt.xlabel('V (Angstrom$^{3}$)')
plt.ylabel('E (a.u.)')
plt.title("Calcite I \n 11 volumes crystal")
plt.legend()
plt.show()


