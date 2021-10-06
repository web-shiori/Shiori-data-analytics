-- Web Snapshotの総ユーザ数・総コンテンツ数・総フォルダ数を取得する
select *
from
(select count(*) as users_count  from users) as users_count,
(select count(*) as content_count from content) as content_count,
(select count(*) as folder_count from folder) as folder_count
;
