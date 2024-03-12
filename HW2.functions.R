# Hello, world!
#

library(rlang)
sqrt.2 = function(x){
  if (x < 0) {
    abort("Error: negative input, NA introduced!")
  }
  else {
    sqrt(x)
  }
}


log.2 = function(x){
  if (x < 0) {
    abort("Error: ngative input, NA introduced!")
  }
  else {
    log(x)
  }
}

f_operator = function(f){
  force(f)
  function(x) {
    result <- catch_cnd(f(x))

    if (is_condition(result)) {
      return(error_cnd(
        message = "Error:ngative input, NA introduced!",
        invalid_input = x
      ))
    } else {
      return(f(x))
    }
  }
}
