SELECT *
FROM stations;

SELECT *
FROM stations
WHERE e_name='Jhunan';

SELECT *
FROM stations
WHERE e_name='Jhunan' and code='1028';

SELECT *
FROM stations
WHERE  e_name='Jhunan' or code='1020';

SELECT *
FROM stations
WHERE e_name='Jhunan' or code='1020' or e_name='Cidu';

SELECT *
FROM stations
WHERE e_name like 'Jh%';

SELECT *
FROM stations
WHERE e_name like 'B%' and length(e_name)>=3 and length(e_name)<=5;


SELECT *
FROM stations
WHERE e_name like 'C%' and e_name!='ChiaPei';