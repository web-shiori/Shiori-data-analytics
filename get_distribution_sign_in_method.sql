-- ログイン方法(メールアドレスログイン・Twitterログイン・githubログインユーザの割合)の割合を取得する

SELECT
    (100.0 * email / (SELECT count(*) FROM users)) as email,
    (100.0 * twitter / (SELECT count(*) FROM users)) as twitter,
    (100.0 * github / (SELECT count(*) FROM users)) as github
FROM
    (SELECT count(*) as email FROM users WHERE provider = 'email') as email,
    (SELECT count(*) as twitter FROM users WHERE provider = 'twitter') as twitter,
    (SELECT count(*) as github FROM users WHERE provider = 'github') as github
