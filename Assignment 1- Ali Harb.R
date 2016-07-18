#Ali Harb
#week1 assignement
#07/17/2016


#Q1 (factorial)

# Ali Harb
# 07/17/2016
# Program to find factorial of a given number

 
# create a function to get the factorial of a given number 
getFactorialOf  <- function(num) {
	# reset factorial variable to 1
	factorial = 1
	# for numbers larger than 1
      print(paste("Solving for:",num,"!"))
	if(num > 0){
		for(i in 1:num){
			factorial=factorial*i;		
		}
			print(paste( factorial," is the factrorial of ", num ))
	}
      # if the number equal to zero
	else if(num == 0){
		factorial=1;
		print(paste( factorial," is the factrorial of ", num ))
	}
	# for negative numbers
	else {
		print("factorial doesn't exist!")
	}
}

#Example for numbers  > 0
getFactorialOf(12)

#Example for number   = 0
getFactorialOf(0)

#Example for numbers  < 0
getFactorialOf(-5)


#Q2 (sequence)

# Ali Harb
# 07/17/2016
# Create a bounded seqence with fix increment
 
# function to create a sequence of numbers with define increments
createMySequence <- function(min,max,increment){
x=seq(from=min, to=max, by=increment)
print(x)
}

# Example 
createMySequence(20,50,5)


#Q3 (quadratic)


# Ali Harb
# 7/17/2016
# Program to Solve for quadratic formula for a given trio numbers

# Function to solve quadratic equation ( x=(-b +-sqrt(b^2-4ac))/2a )
Quadratic <- function(a,b,c){
  
      
       # Test if the function is quadratic  
 	if(a == 0){
		print("it is not quadratic")
	}
	else {

             # find the determinant 
	       determinant=(b*b)-(4*a*c)
             print(paste("Determinant=",determinant))

            # if the determinent is larger than zero, then there is two real distinct solutions 
	      if(determinant > 0){
      	   x1 = (-b + sqrt(determinant)) / (2*a)
         	   x2 = (-b - sqrt(determinant)) / (2*a)
         	   print(paste("x1= ",x1," x2= ",x2))
		}
             # if the determinant is equal to zero, then there is two real equal solutions 
	      else if(determinant == 0){
               x1 = (-b + sqrt(determinant)) / (2*a)
               print(paste("x1=x2= ",x1))
		}
             # if determinant is less than zero,then there is two complex solutions
	      else {
              real= -b/(2*a)
	        imaginary=sqrt(-determinant)/(2*a)
	        print(paste("x1=",real,"+",imaginary,"i","   x2=",real,"+",imaginary,"i"))
		} 
	}
}
# Examples 
Quadratic(0,2,1)

Quadratic(4,5,1)

Quadratic(1,2,1)

Quadratic(1,2,2)


