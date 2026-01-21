-- 39번_카테고리 별 도서 판매량 집계하기
-- 출처 : 부트캠프 SQL 코드카타 / 144855번
-- 문제: 카테고리 별 도서 판매량 집계하기 (프로그래머스 SQL Level 2)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성일: 2026. 01. 21. 11:44:36
-- 문제풀이 블로그 링크: https://moon2moo.tistory.com/73

/* [문제 포인트]
- BOOK 테이블과 BOOK_SALES 테이블을 JOIN하여 카테고리별 판매량을 집계.
- SALES_DATE가 2022년 1월 1일부터 2022년 1월 31일 사이인 데이터만 필터링.
- GROUP BY 절을 사용하여 카테고리별로 묶고, SUM 함수를 사용하여 총 판매량 계산.
- 결과는 카테고리 오름차순으로 정렬.
*/
SELECT B.CATEGORY,
    SUM(C.SALES) AS TOTAL_SALES
FROM BOOK_SALES C
JOIN BOOK B
ON C.BOOK_ID = B.BOOK_ID
WHERE C.SALES_DATE BETWEEN "2022-01-01" AND "2022-01-31"
GROUP BY B.CATEGORY
ORDER BY B.CATEGORY ASC;
/*
--------------------------------------------------------------------------------
[오답 노트 & 회고]
1. 오류 상황
- JOIN을 써야 하는 건 알았는데 계속 문법 오류가 났음.
2. 시도 방법 (CTE)
- 구조가 안 잡혀서 CTE로 접근하려 했으나 실패함.
- Claude에게 힌트 5개 요청해서 부분 수정함.
3. 최종 해결
- C.COUNT(SALES)가 아니라 판매량 합산이므로 SUM(SALES)를 써야 했음!
- 집계함수 실수 수정 후 통과.

-- [다른 풀이 방법 1] CTE 활용 ------------------------------------------------------
WITH JAN_SALES AS (
    SELECT B.CATEGORY, C.SALES
    FROM BOOK_SALES C
    JOIN BOOK B ON C.BOOK_ID = B.BOOK_ID
    WHERE C.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
)
SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM JAN_SALES
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;

-- [다른 풀이 방법 2] 서브쿼리 활용 --------------------------------------------------
SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM (
    SELECT B.CATEGORY, C.SALES
    FROM BOOK_SALES C
    JOIN BOOK B ON C.BOOK_ID = B.BOOK_ID
    WHERE C.SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
) AS JAN_DATA
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;

--[날짜 함수 다른 방식] ---------------------------------------------------------------

-- DATE_FORMAT 사용
WHERE DATE_FORMAT(C.SALES_DATE, '%Y-%m') = '2022-01'

-- YEAR, MONTH 함수 사용
WHERE YEAR(C.SALES_DATE) = 2022 AND MONTH(C.SALES_DATE) = 1
/*