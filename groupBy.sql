SELECT grade, count(*) as people from students
 GROUP BY grade

 SELECT blood_group, count(*) , avg(age) from students
  GROUP BY blood_group
    HAVING avg(age) >= 20 -- filtering


