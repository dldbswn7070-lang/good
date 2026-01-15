-- 23번_조건에맞는회원수구하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131535번
-- 문제: 조건에 맞는 회원수 구하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 날짜: 2026.01.16
-- 문제풀이 블로그 링크:https://moon2moo.tistory.com/48

/* [문제 포인트]
   1. 가입일 조건: 2021년에 가입한 회원.
      - 작성한 방법: JOINED LIKE '2021%' (문자열 패턴 매칭) 
      - 또 다른 방법: YEAR(JOINED) = 2021 (날짜 함수 사용)
   
   2. 나이 조건: 20세 이상 29세 이하.
      - AGE BETWEEN 20 AND 29
*/

SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE JOINED LIKE '2021%'
  AND AGE BETWEEN 20 AND 29;