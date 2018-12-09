library(lpSolveAPI)
f.obj<-c(1,1) #objective function
f.con<-matrix(c(50,24,30,33,1,0,0,1,1,1), ncol=2, byrow=TRUE) #constraints
f.dir<-c("<=","<=",">=",">=",">=") #direction
f.rhs<-c(2400,2100,45,5,50) #values of contraints
trans=cbind(f.con, f.dir,f.rhs)
trans #display matrix
x4=lp("max",f.obj,f.con,f.dir,f.rhs)
lp("max",f.obj,f.con,f.dir,f.rhs)$solution

#5e2 LP -tpt code given in file