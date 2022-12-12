cap program drop perclab 
 program define perclab, rclass
 syntax , values(numlist) [format(string)]
 local perclabs = ""
 if "`format'" == "" local format = "%9.2g"
 foreach num in `values'{
     local num100 = strofreal(`num'*100,"`format'")
     local lab = "`num100'%"
     local perclabs = `"`perclabs' `num' "`lab'""'
 }
 return local perclabs = `"`perclabs'"'
 end
