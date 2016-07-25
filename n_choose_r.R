
# Ali Harb
# "n choose r" program using recrusive functions
# Program based on Pascal's triangle for non-negative integers where (0 <= r <= n)
# week 2 

n_choose_r <- function(n,r) {
  if(r > 0 && n > 0 && n < r)
  {
    return(0)
  }else if (r == 0 || r == n) {
      return(1)
  }else {
       return(n_choose_r(n-1, r-1) + n_choose_r(n-1, r))
  }
}

n_choose_r(20,10)
choose(20.5,10)


# Ali Harb
# "n choose r" program using factorial 
# for all non-negative integers where (0 <= r <= n)
# week 2 

get_factorial  <- function(x) {
  if (x == 0){
    return (1)
  }else{ 
    return (x * get_factorial(x-1))
  }          
}


n_choose_k <- function(n,r){
  if(r > 0 && n > 0 && n < r)
  {
    return(0)
  }else {
    return(get_factorial(n)/(get_factorial(n-r)*get_factorial(r)))
  }
}

n_choose_k(20,11)
choose(20,11)

