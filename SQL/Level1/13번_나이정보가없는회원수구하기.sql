-- 13번_나이정보가없는회원수구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131535번
-- 문제: 나이 정보가 없는 회원 수 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [문제 포인트 & 풀이 방법 3가지]
   - 조건: AGE 컬럼이 NULL인 회원의 수를 세어야 함.
   - 아래 3가지 방법 모두 정답이며, 상황에 따라 골라 쓰면 됨.
*/
  

-- [방법 1] CASE WHEN 사용 (특정 조건의 개수를 여러 컬럼으로 만들 때 유용)
SELECT COUNT(CASE WHEN AGE IS NULL THEN 1 END) AS USERS
FROM USER_INFO;

-- [방법 2] WHERE 절 사용 (가장 표준적이고 읽기 쉬운 정석 방법)
SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;

-- [방법 3] SUM(조건) 사용 (MySQL에서 True=1임을 이용한 숏코딩, 가장 빠르고 쉬움)
SELECT SUM(AGE IS NULL) AS USERS
FROM USER_INFO;