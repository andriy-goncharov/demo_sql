-- SELECT hd
-- FROM PC
-- GROUP BY hd 
-- HAVING COUNT(*) >= 2

-- SELECT speed, AVG(price) as price
-- from PC 
-- WHERE speed >600



SELECT speed, AVG(price) as price
from PC
WHERE speed >600
GROUP by speed
