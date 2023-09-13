SELECT count(firstname)  FROM public.customers
WHERE gender = 'F' AND (state = 'OR' OR state = 'NY') AND age >30 ;


SELECT firstname, lastname FROM public.customers
WHERE age BETWEEN 30 AND 50;


--Partial Look up

/*
LIKE
partial look up is a pattern matching
# for example 
LIKE '%2' fields that ends with 2
LIKE '%2%' fields with 2 anywhere in the blue
LIKE '_00%' fields that have 2 zeros as the second and third and anything after
ILIKE is the same as like but it is not case sensitive 
also it is important to know that LIKE can only be casted on strings so you will need to use CAST(int AS str)
*/
SELECT firstname FROM public.customers
WHERE  firstname ILIKE 'G%';

SHOW timezone;