/*
*  Author: Leylim Yalcin 27.06.2018
*  Using java code in PL/SQL language
*  
*/
CREATE OR REPLACE AND COMPILES
JAVA SOURCE NAMED "isPrime"
AS
import java.sql.SQLException
public static boolean isPrime(int number){
			    for(int i=2;i<number;i++) {
			        if(number%i==0)
			            return false;
			    }
			    return true;
                }
/
CREATE OR REPLACE FUNCTION java_isprime RETURN boolean
AS
LANGUAGE JAVA
NAME 'isPrime.ISPRIME() RETURN boolean';
/