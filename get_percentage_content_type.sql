-- コンテンツの種類(web, video, pdf, file)の割合を取得する

SELECT
    (100.0 * web / (SELECT count(*) FROM content)) as web,
    (100.0 * video / (SELECT count(*) FROM content)) as video,
    (100.0 * pdf / (SELECT count(*) FROM content)) as pdf,
    (100.0 * file / (SELECT count(*) FROM content)) as file
FROM
    (SELECT count(*) as web FROM content WHERE content_type = 'web') as web,
    (SELECT count(*) as video FROM content WHERE content_type = 'video') as video,
    (SELECT count(*) as pdf FROM content WHERE content_type = 'pdf') as pdf,
    (SELECT count(*) as file FROM content WHERE content_type = 'file') as file
