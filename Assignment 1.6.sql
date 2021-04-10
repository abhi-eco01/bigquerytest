-- Suppose there is Hard Drink Company who wants to sponser a Base Ball team Astros, 
-- Since it has a outlet near the home ground of Astros it wants to check the profitibality with respect to the Attendence in the matches played near their Outlet at Night . 

SELECT
aa.duration_minutes
,aa.attendance
,aa.homeTeamName
,aa.awayTeamName
,aa.dayNight
,aa.seasonId
FROM `bigquery-public-data.baseball.schedules` as aa     
WHERE aa.homeTeamName = 'Astros' 
AND aa.dayNight = 'N'   
ORDER BY aa.attendance asc 
