select *
from
(select count(*) as users_count  from users) as users_count,
(select count(*) as content_count from content) as content_count,
(select count(*) as folder_count from folder) as folder_count
;
