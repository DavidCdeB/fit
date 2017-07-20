#!/usr/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Version 4.6 patchlevel 4    last modified 2013-10-02 
#    	Build System: Linux x86_64
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2013
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
GNUTERM = "wxt"
E0 = -1883.02163780985
V0 = 127.067506247934
B0 = 76.6287959100872
B0_prime = 4.53329804401379
FIT_LIMIT = 1e-10
GPFUN_E_Birch_Murnaghan = "E_Birch_Murnaghan(x)= E0+ (2.293710449E+17)*(1E-21)*( (9.0/16.0)*(V0*B0) * (  (((V0/x)**(2.0/3.0)-1)**3)*B0_prime  + ((V0/x)**(2.0/3.0)-1)**2  *  (6.0-4.0*(V0/x)**(2.0/3.0))  ))"
FIT_CONVERGED = 0
FIT_NDF = 7
FIT_STDFIT = 7.28112293089125e-07
FIT_WSSR = 3.71103257943253e-12
#    EOF
