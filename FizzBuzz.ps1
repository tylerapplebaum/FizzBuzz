# "Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz”."

# FizzBuzz challenge - Tyler Applebaum 7/7/2015
# I took the "lazy" way out and just checked for a decimal. If there's a decimal, it must not be divisible evenly.

$arr = 1..100 # Define the array
foreach ($i in $arr){ #Iterate through the array
$FizzBuzz = 15 #If a number is divisible by both 3 and 5, then it's divisible by 15.
$Buzz = 5
$Fizz = 3
  If ($($i / $FizzBuzz -notmatch '\.')){ #Define the "most restrictive" condition first
    Write-Output "FizzBuzz"
  }
  Elseif ($($i / $Buzz -notmatch '\.')){ #Define the second condition
    Write-Output "Buzz"
  }
  Elseif ($($i / $Fizz -notmatch '\.')){ #Define the third condition
    Write-Output "Fizz"
  }
  Else {
    Write-Output $i #Define the default condition
  }
}
