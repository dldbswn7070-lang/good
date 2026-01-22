-- 가격대 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131530
-- 작성자: 이윤주
-- 작성일: 2026. 01. 22. 22:16:28

SELECT FLOOR(PRICE / 10000) * 10000 AS PRICE_GROUP,
       COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY FLOOR(PRICE / 10000) * 10000
ORDER BY PRICE_GROUP ASC;

