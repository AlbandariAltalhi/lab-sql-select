SELECT authors.au_id, authors.au_lname, authors.au_fname, COALESCE(SUM(titles.ytd_sales), 0) AS total_sales
FROM titleauthor
JOIN authors ON titleauthor.au_id = authors.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_id
ORDER BY total_sales DESC;
