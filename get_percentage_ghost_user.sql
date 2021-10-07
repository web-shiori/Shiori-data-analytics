-- 幽霊ユーザ(コンテンツを一個も保存していない)の割合を取得する
-- 会員登録時に自動で3つコンテンツが保存されるので、その処理をリリース後に登録し、かつコンテンツが3つしか保存されていないユーザを探す

SELECT count(*) ghost_users_count
FROM (
         SELECT u.id, u.created_at, count(*)
         FROM users u
                  LEFT OUTER JOIN content c on u.id = c.user_id
         WHERE u.created_at > to_timestamp('2021/09/21 05:00:00', 'YYYY/MM/DD HH24:MI:SS')
         GROUP BY u.id
         HAVING count(*) = 3
     ) as ghost_users
;
