-- お気に入りに登録されているコンテンツの数を取得する
SELECT count(*)
FROM content
WHERE liked = true
;

-- (俺以外がお気に入りに登録したコンテンツの数)
SELECT count(*)
FROM users as u
LEFT JOIN content as c ON u.id = c.user_id
WHERE user_id NOT IN (1, 2, 3, 4, 5)
AND liked = true
;
