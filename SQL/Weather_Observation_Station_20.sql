SELECT ROUND(AVG(ss.LAT_N), 4) as median_val
FROM (
SELECT s.LAT_N, @rownum:=@rownum+1 as "row_number", @total_rows:=@rownum
  FROM STATION s, (SELECT @rownum:=0) r
  WHERE s.LAT_N is NOT NULL
  ORDER BY s.LAT_N
) as ss
WHERE ss.row_number IN ( FLOOR((@total_rows+1)/2), FLOOR((@total_rows+2)/2) );
