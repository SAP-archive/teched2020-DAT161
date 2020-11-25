--Note
--This query performs an inner join between the CAMEOCODES and V_EVENT tables, and appends GlobalEventID from the V_EVENT table. It finds all events since 19 November 2018, provides a human-readable CAMEOCODE description each event, counts the number of instances of each CAMEOCODE, and sorts the count by descending order.

SELECT COUNT(CODE_DESC), CODE_DESC 
FROM (
    SELECT c.CODE_DESC, c.CODE, e.*  
    FROM HDLEXERCISE.V_EVENT e 
         INNER JOIN 
         HDLEXERCISE.CAMEOCODES c
         ON c."CODE" = e."EventCode"
    ) event
    INNER JOIN 
    HDLEXERCISE.V_MENTIONS m
    ON m."GlobalEventID" = event."GlobalEventID"
WHERE event."Day" > '2018-11-19'
GROUP BY CODE_DESC
ORDER BY COUNT(CODE_DESC)  DESC;



