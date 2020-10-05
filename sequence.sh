                                  Sequences Practice Problems           Priyanka M
                                 -----------------------------          Mail:priyankakumbra@gmail.com

1)Use Random Function((RANDOM)) to get single digit.
  Answer:
  -------
  LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
  $ echo $((1+RANDOM%10))
  4
  
  $ echo $((1+RANDOM%10))
  8

2)Use Random to get Dice Number 1 to 6.
  Answer:
  -------
  LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
  $ echo $((1+RANDOM%6))
  6
  
  $ echo $((1+RANDOM%6))
  1

3)Add two Random Dice Number and Print the Result.
  Answer:
  -------
  touch aa.sh
  nano aa.sh
  ************
  #!/bin/bash -x
  x=$(( 1+RANDOM%6 ));
  y=$(( 1+RANDOM%6 ));
  z=$(($x+$y))
  echo $z
  ************
 
  output:
  -------
  LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
  $ chmod +x aa.sh

  LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
  $ ./aa.sh
  + x=3
  + y=6
  + z=9
  + echo 9
  --> 9

  LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
  $ ./aa.sh
  + x=5
  + y=6
  + z=11
  + echo 11
  --> 11

4) Write a program that reads 5 Random 2 Digit values , then find thier sum and average.
   Answer:
   -------
   touch fa.sh
   nano fa.sh
   ************
   #!/bin/bash -x
   sum=0;
   for i in 1 2 3 4 5
   do
        sum=$((sum+$((1+$RANDOM%100))))
   done
   echo $sum
   avg=$(($sum/5))
   echo $avg

   ************   

  output:
  ------

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fa.sh
+ sum=0
+ for i in 1 2 3 4 5
+ sum=47
+ for i in 1 2 3 4 5
+ sum=112
+ for i in 1 2 3 4 5
+ sum=185                                     
+ for i in 1 2 3 4 5
+ sum=236
+ for i in 1 2 3 4 5
+ sum=290
+ echo 290
290
+ avg=58
+ echo 58
58

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./fa.sh
+ sum=0
+ for i in 1 2 3 4 5
+ sum=4
+ for i in 1 2 3 4 5
+ sum=43
+ for i in 1 2 3 4 5
+ sum=116
+ for i in 1 2 3 4 5
+ sum=119
+ for i in 1 2 3 4 5
+ sum=148
+ echo 148
148
+ avg=29
+ echo 29
29


5)Unit conversion
  a) 1ft =12 in then 42 in =? ft
  b) Rectangular Plot of 60 feet x 40 feet in meters.
  c) Calculate area of 25 such plots in acres.
  
Answer:
-------
 a)touch ga.sh
   nano ga.sh
   **********
   #!/bin/bash
   echo "feet to inch conversion ,Enter '0' otherwise '1' "
   read n
   if [ $n  -eq 0 ]
   then
   echo "Enter feet"
   read feet
   in=$(($feet*12))
   echo $feet feet=$in inch
   else
   echo "Enter inch"
   read in
   feet=$(($in/12))
   echo $in inch=$feet ft
   fi
   *************
 
   Output:
   ------
   LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
   $ ./ga.sh
   feet to inch conversion ,Enter '0' otherwise '1'
   0
   Enter feet
   1
   1 feet=12 inch

   LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
   $ ./ga.sh
   feet to inch conversion ,Enter '0' otherwise '1'
   1
   Enter inch
   42
   42 inch=3 ft

b)echo "Enter Rectangular plot feets"
read f1
read f2
c=10.36;
a=$(($f1*$f2))
area=$(awk 'BEGIN {print '$a' / '$c'}')
echo $area in square meters.

output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./i.sh
Enter Rectangular plot feets
60
40
231.66 in square meters.

c)
touch rr.sh
nano rr.sh
***********
#!/bin/bash
echo  " convert  Acres to square meters(Enter 0) and convert square meters to a>
read n
v=4046.85;
if [[ $n -eq 0 ]]
then
        echo "Enter acre(ac)"
        read ac
        acre=$(awk 'BEGIN {print '$ac' * '$v'}')
        echo $acre
else
        echo "Enter square(in meters)"
        read sq
        sqr=$(awk 'BEGIN {print '$sq' / '$v'}')
        echo $sqr
fi
*********************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./rr.sh
 convert  Acres to square meters(Enter 0) and convert square meters to acres( Enter 1) :
0
Enter acre(ac)
61
246858

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./rr.sh
 convert  Acres to square meters(Enter 0) and convert square meters to acres( Enter 1) :
1
Enter square(in meters)
25
0.00617764

---------------------------------------------------------------------------------
              
            Selection Practice Problems with if & else            Priyanka M
           ------------------------------------------------

1)Write program that reads 5 Random 3 digit values and then outputs the minimum and maximum value.
  Answer:
  -------
  touch ha.sh
  nano ha.sh
**********
#!/bin/bash
max=0
min=999
echo "Generated Random numbers are:"
for i in 1 2 3 4 5:
do
arr=$(($RANDOM%999 + 1));
echo $arr
if [ $i -eq 1 ]
then
max=$arr
else
if [ $arr -gt $max ]
then
max=$arr
fi
fi

if [ $i -eq 1 ]
then
min=$arr
else
if [ $arr -lt $min ]
then
min=$arr
fi
fi

done
echo "Maximum value in this random number : $max"
echo "Minimum value in this random number : $min"

*********************
output:
--------
$ ./ha.sh
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./ha.sh
Generated Random numbers are:
629
132
184
948
197
Maximum value in this random number : 948
Minimum value in this random number : 132

2)Write a program that takes day and month from the command line and prints true if day of month is between March 20 and june 20 otherwise false.
  Answer:
  ------
  touch maxmin.sh
  nano maxmin.sh
********************
echo "Enter Month and date"
read m d
if [[ "$m" == "March" && $d -gt 19 || "$m" == "April" || "$m" == "May" || "$m" == "June" && $d -lt 21 ]] ;
then
        echo "true"
else
        echo "false"

fi
**************************
output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./maxmin.sh
Enter Month and date
March 21
true

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./maxmin.sh
Enter Month and date
December 11
false

3)Write a program whether given year leap year or not.
  Answer:
  -------
  touch v.sh
  nano v.sh
  
y=0
leap="false"

echo -n "Enter year: "
read y

if [ $((y % 4)) -ne 0 ] ; then
   :
elif [ $((y % 400)) -eq 0 ] ; then
   leap="true"
elif [ $((y % 100)) -eq 0 ] ; then
   :
else
   leap="true"
fi

if [ "$leap" == "true" ];
then
   echo "$y is leap year"
else
   echo "$y is NOT leap year"
fi

output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./v.sh
Enter year: 2000
2000 is leap year

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./v.sh
Enter year: 1999
1999 is NOT leap year

4)Write a program to simulate a coin flip and print out "Heads or "Tails" accordingly.
 Answer:
 -------
 touch vi.sh
  nano vi.sh
************************
echo "Flip a coin(0/1)"
read coin
if [ $coin -eq 0 ]
then
echo "Heads "
else
echo "Tails"
fi
*******************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./vi.sh
Flip a coin(0/1)
0
Heads

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./vi.sh
Flip a coin(0/1)
1
Tails

----------------------------------------------------------------------------------

                     Selection Practice Problems with if, elif and else
                     ---------------------------------------------------

1)Read a single digit number and write the number in word
Answer:
------
touch read.sh
nano read.sh
*******************
echo "Enter Number"
read n
if [[ $n -eq 0 ]]
then
        echo "Zero"
elif [[ $n -eq 1 ]]
then
        echo "One"
elif [[ $n -eq 2 ]]
then
        echo "Two"
elif [[ $n -eq 3 ]]
then
        echo "Three"
elif [[ $n -eq 4 ]]
then
        echo "Four"
elif [[ $n -eq 5 ]]
then
        echo "Five"
elif [[ $n -eq 6 ]]
then
        echo "Six"
elif [[ $n -eq 7 ]]
then
        echo "Seven"
elif [[ $n -eq 8 ]]
then
        echo "Eight"
elif [[ $n -eq 9 ]]
then
        echo "Nine"
else
        echo " Enter single digit and Try again"
fi
************************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./read.sh
Enter Number
5
Five

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./read.sh
Enter Number
10
Enter single digit and Try again

2. Read a Number and Display the week day (Sunday, Monday,...)
Answer:
------
touch re.sh
nano re.sh
***********
echo "Enter Number"
read n
if [[ $n -eq 1 ]]
then
        echo "Sunday"
elif [[ $n -eq 2 ]]
then
        echo "Monday"
elif [[ $n -eq 3 ]]
then
        echo "Tuesday"
elif [[ $n -eq 4 ]]
then
        echo "Wednesday"
elif [[ $n -eq 5 ]]
then
        echo "Thursday"
elif [[ $n -eq 6 ]]
then
        echo "Friday"
elif [[ $n -eq 7 ]]
then
        echo "Saturday"
else
        echo "Only 7 days in a week..Try it again"
fi
*****************************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./re.sh
Enter Number
5
Thursday

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./re.sh
Enter Number
11
Only 7 days in a week..Try it again

3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
Answer:
------
touch ree.sh
nano ree.sh
*****************
echo "Enter Number"
read n
if [[ $n -eq 1 ]]
then
        echo "Unit"
elif [[ $n -eq 10 ]]
then
        echo "Ten"
elif [[ $n -eq 100 ]]
then
        echo "Hundred"
elif [[ $n -eq 1000 ]]
then
        echo "Thousand"
elif [[ $n -eq 10000 ]]
then
        echo "Ten Thousand"
elif [[ $n -eq 100000 ]]
then
        echo "Hundred Thousand"
elif [[ $n -eq 1000000 ]]
then
        echo "Billion"
elif [[ $n -eq 10000000 ]]
then
        echo "Ten Billion"
elif [[ $n -eq 100000000 ]]
then
        echo "Hundred Billion"
elif [[ $n -eq 10000000000 ]]
then
        echo "Million"

else
       echo " Default"
fi
****************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./ree.sh
Enter Number
1000000
Billion

4. Enter 3 Numbers do following arithmetic operation and find the one that is maximum and minimum
   i. a + b * c           iii. c + a / b
   ii. a % b + c           iv. a * b + c
Answer:
------
touch mo.sh
nano mo.sh
*********
#!/bin/bash
echo "Choose the arithmatic operation to perform further calcaluation : 1.a+b*c  2. a%b+c  3.c+a/b  4. a*b+c"
read n
echo "Enter 3 numbers"
read a b c
if [[ $n -eq 1 ]]
then
        s=$(($a+($b*$c)))
        echo "Total = $s "
elif [[ $n -eq 2 ]]
then
        s=$((($a%$b)+$c))
        echo "Total = $s "
elif [[ $n -eq 3 ]]
then
        s=$(($c+($a/$b)))
        echo "Total = $s "
elif  [[ $n -eq 4 ]]
then
        s=$((($a*$b)+$c))
        echo "Total = $s "
else
        echo "Default Number..Try it again "
fi
*************************************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./me.sh
Choose the arithmatic operation to perform further calcaluation : 1.a+b*c  2. a%b+c  3.c+a/b  4. a*b+c
2
Enter 3 numbers
10 30 50
Total = 60

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./me.sh
Choose the arithmatic operation to perform further calcaluation :1.a+b*c  2. a%b+c  3.c+a/b  4. a*b+c
1
Enter 3 numbers
10 20 30
Total = 610
------------------------------------------------------------------------------------------------------------------

                          Selection Practice Problems with case statement
			------------------------------------------------------

1. Read a single digit number and write the number in word
Answer:
------
touch si.sh
nano si.sh
*********
#!/bin/bash
echo "Enter Number"
read n
case $n in
        0) echo "Zero"
        ;;
        1) echo "One"
        ;;
        2) echo "Two"
        ;;
        3) echo "Three"
        ;;
        4) echo "Four"
        ;;
        5) echo "Five"
        ;;
        6) echo "Six"
        ;;
        7) echo "Seven"
        ;;
        8) echo "Eight"
        ;;
        9) echo "Nine"
        ;;
        *)
        echo "Default number"
        ;;
        esac
*********************************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./si.sh
Enter Number
5
Five

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./si.sh
Enter Number
13
Default number

2. Read a Number and Display the week day (Sunday, Monday,...)
Answer:
------
Answer:
-------
#!/bin/bash
echo "Enter Number"
read n
case $n in
        1) echo "Sunday"
        ;;
        2) echo "Monday"
        ;;
        3) echo "Tuesday"
        ;;
        4) echo "Wednesday"
        ;;
        5) echo "Thursday"
        ;;
        6) echo "Friday"
        ;;
        7) echo "Saturday"
        ;;
        *)
        echo "Only 7 days in a week..! Try it again."
        ;;
        esac

Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./no.sh
Enter Number
3
Tuesday

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./no.sh
Enter Number
9
Only 7 days in a week..! Try it again.

3. Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
Answer:
------
touch wo.sh
nano wo.sh
************
#!/bin/bash
echo "Enter Number"
read n
case $n in
        1) echo "Unit"
        ;;
        10) echo "Ten"
        ;;
        100) echo "Hundred"
        ;;
        1000) echo "Thousand"
        ;;
        10000) echo "Ten Thousand"
        ;;
        100000) echo "Hundred Thousand"
        ;;
        1000000) echo "Million"
        ;;
        10000000) echo "Ten Million"
        ;;
        100000000) echo "Hundred Million"
        ;;
        1000000000) echo "Billion"
        ;;
        esac
********************************
Output:
-------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./wo.sh
Enter Number
10000
Ten Thousand

4. Write a program that takes User Inputs and does Unit Conversion of different Length units
	i. Feet to Inch 	iii. Inch to Feet
	ii. Feet to Meter 	iv. Meter to Feet
Answer:
------
touch hh.sh
nano hh.sh
*************
#!/bin/bash
v=3.2808;
echo "Choose the unit conversion operation : 1.Feet to Inch  2. Inch to Feet  3.Feet to Meter  4. Meter to feet"
read n
echo "Enter number"
read num
if [[ $n -eq 1 ]]
then
        feet=$(($num*12))
        echo "$num ft =$feet in"
elif [[ $n -eq 2 ]]
then
         inch=$(($num/12))
        echo "$num in =$inch ft"
elif [[ $n -eq 3 ]]
then
        fe=$(awk 'BEGIN {print '$num' / '$v'}')
        echo "$num ft = $fe meter"
elif  [[ $n -eq 4 ]]
then
        m=$(awk 'BEGIN {print '$num' * '$v'}')
        echo "$num meter =$m ft "
else
        echo "Default Number..Try it again "
fi
******************
Output:
------
LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./hh.sh
Choose the unit conversion operation : 1.Feet to Inch  2. Inch to Feet  3.Feet to Meter  4. Meter to feet
4
Enter number
65
65 meter =213.252 ft

LENOVO@DESKTOP-2N2U3UA MINGW64 ~/Command/linux-content (master)
$ ./hh.sh
Choose the unit conversion operation : 1.Feet to Inch  2. Inch to Feet  3.Feet to Meter  4. Meter to feet
2
Enter number
45
45 in =3 ft


---------------------------------------------------END-----------------------------------------------------------
