--Metrics


% Returned Orders =
Var \_total\_orders = DISTINCTCOUNT(Orders\[Order ID])
Var \_returned\_orders = DISTINCTCOUNT(Returns\[Order ID])
Var \_perc  =
Divide (
\_returned\_orders,
\_total\_orders
)
RETURN
\_perc



Profit = sum (Orders\[Profit])



Sales = SUM( Orders\[Sales])



--PY (Previous Year)


% returned orders PY =
CALCULATE(
\[% returned orders],
SAMEPERIODLASTYEAR('Date Table'\[Date])
)



Profit PY =
CALCULATE(
\[Profit],
SAMEPERIODLASTYEAR('Date Table'\[Date])
)



Sales PY =
CALCULATE(
\[Sales],
SAMEPERIODLASTYEAR('Date Table'\[Date])
)



--vs PY (Previous Year)


vs PY - % returned orders =
\[% Returned Orders] - \[% returned orders PY]



vs PY - Profit =
DIVIDE(
\[Profit] - \[Profit PY],
\[Profit PY]
)



vs PY - Sales =
DIVIDE(
\[Sales] - \[Sales PY],
\[Sales PY]
)



--Date Table


Date Table =
ADDCOLUMNS(
CALENDAR(MIN(Orders\[Order Date]),max(Orders\[Order Date])),
"Start of Month", EOMONTH(\[Date], -1) + 1
)

