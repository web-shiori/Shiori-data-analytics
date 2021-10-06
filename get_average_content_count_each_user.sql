-- 一人あたりの平均コンテンツ保存数を取得する

SELECT AVG(content_count)
FROM (
         SELECT u.id, COUNT(c.id) as content_count
         FROM users as u
                  LEFT JOIN content as c ON u.id = c.user_id
         GROUP BY u.id
     ) as user_content_count
;
