// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;



contract Token {
    //first check if n is prime or not

function is_prime(int n) private returns(bool){
  for (int i=2; i*i<n; ++i)
    if ( n % i == 0)
      return true;

  return false ;
}

function getNearestPrimeNumber(int n) private {
   for (int i = n - 1; i > 1; i--) {
      if (is_prime(i)) {
         return i;
      }
   }
   return -1;
}
function main(int n ) public {
   
   console.log (getNearestPrimeNumber(n));
   return 0;
}

}   
