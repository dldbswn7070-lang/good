-- 16번_경기도에위치한식품창고목록출력하기.sql
-- 문제 출처: 부트캠프 SQL 코드카타 / 131114번
-- 문제: 경기도에 위치한 식품창고 목록 출력하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131114
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [문제 포인트 & 실무 팁]
   1. NULL 처리: FREEZER_YN이 NULL이면 'N'으로 표시.
      -> IFNULL(FREEZER_YN, 'N') 사용.
   
   2. 검색 조건: '경기도'로 시작하는 주소 찾기.
      -> WHERE ADDRESS LIKE '경기%'
      -> (참고) 창고 이름 규칙을 이용해 WAREHOUSE_NAME LIKE '%_경기%' 도 가능함.
      
   3. [실무 메모]
      실제 현업 데이터는 생각보다 지저분함. (NULL, 빈 문자열 "", 공백 " ", 'Unknown' 등)
      그래서 단순 IFNULL보다 CASE WHEN으로 복잡한 예외 케이스를 다 잡아주는 경우가 많음.
*/
-- [방법 1] IFNULL 사용 (가장 간단하고 깔끔함)
SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, 
       IFNULL(FREEZER_YN, 'N') AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기%'
ORDER BY WAREHOUSE_ID ASC;

-- [방법 2] CASE WHEN 사용 (실무형 강력한 제어)
-- 설명: NULL 뿐만 아니라 빈 값('')이나 알 수 없는 값까지 처리해야 할 때 유용함.
-- SELECT WAREHOUSE_ID, WAREHOUSE_NAME, ADDRESS, 
--        CASE 
--            WHEN FREEZER_YN IS NULL THEN 'N' 
--            ELSE FREEZER_YN 
--        END AS FREEZER_YN
-- FROM FOOD_WAREHOUSE
-- WHERE ADDRESS LIKE '경기%'
-- ORDER BY WAREHOUSE_ID ASC;