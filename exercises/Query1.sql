SELECT sum("l_extendedprice" * "l_discount") AS revenue
FROM HDLExercise.V_LINEITEM
WHERE "l_shipdate" >= '1994-01-01'
	AND "l_shipdate" < add_years( TO_DATE( '1994-01-01', 'YYYY-MM-DD' ), 1 )
	AND --ASA date '1994-01-01' + interval '1' year
	"l_discount" BETWEEN .06 - 0.01 AND .06 + 0.01
	AND "l_quantity" < 24;