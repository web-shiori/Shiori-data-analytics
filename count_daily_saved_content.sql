-- 1日のコンテンツ保存数を取得する(期間は直近1週間)

SELECT *
FROM
    (
        SELECT count(*) as today FROM content
        WHERE created_at::date = now()::date
    ) as today,
    (
        SELECT count(*) as one_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-1 days' as INTERVAL ))
    ) as one_day_ago,
    (
        SELECT count(*) as two_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-2 days' as INTERVAL ))
    ) as two_day_ago,
    (
        SELECT count(*) as three_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-3 days' as INTERVAL ))
    ) as three_day_ago,
    (
        SELECT count(*) as four_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-4 days' as INTERVAL ))
    ) as four_day_ago,
    (
        SELECT count(*) as five_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-5 days' as INTERVAL ))
    ) as five_day_ago,
    (
        SELECT count(*) as six_day_ago FROM content
        WHERE created_at::date = (now()::date + cast( '-6 days' as INTERVAL ))
    ) as six_day_ago
