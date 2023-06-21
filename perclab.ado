cap program drop perclab 
 program define perclab, rclass
 syntax , values(numlist) [format(string)]
 local perclab = ""
 if "`format'" == "" local format = "%9.2g"
 foreach num in `values'{
     local num100 = strofreal(`num'*100,"`format'")
     local lab = "`num100'%"
     local perclab = `"`perclab' `num' "`lab'""'
 }
 return local perclab = `"`perclab'"'
 end
