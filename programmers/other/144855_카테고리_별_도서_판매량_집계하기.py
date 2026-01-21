# 카테고리 별 도서 판매량 집계하기
# 프로그래머스 (unknown)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
# 작성자: 이윤주
# 작성일: 2026. 01. 21. 11:44:36

-- 코드를 입력하세요
SELECT B.CATEGORY,
       SUM(C.SALES) AS TOTAL_SALES
FROM BOOK_SALES C
JOIN BOOK B
ON C.BOOK_ID = B.BOOK_ID
WHERE C.SALES_DATE BETWEEN "2022-01-01" AND "2022-01-31"
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY ASC;