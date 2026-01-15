-- 24번_12세이하인여자환자목록출력하기.sql
-- 문제 출처: 부트캠프 SQL 코드카타 / 132201번
-- 문제: 12세 이하인 여자 환자 목록 출력하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
-- 날짜: 2026.01.07
--문제풀이 블로그 링크:https://moon2moo.tistory.com/48

/* [문제 포인트 & 배운 점]
   1. NULL 처리: 전화번호(TLNO)가 없으면 'NONE'으로 출력.
      - 사용한 방법: COALESCE(TLNO, 'NONE') 
      - ★장점★: COALESCE는 표준 SQL 함수라 모든 DB에서 동작함. (IFNULL은 MySQL 전용)
      
   2. 조건 필터링:
      - 12세 이하 (AGE <= 12)
      - 여자 환자 (GEND_CD = 'W')
      - 두 조건 모두 만족해야 하므로 AND 연산자 사용.
*/

SELECT PT_NAME, PT_NO, GEND_CD, AGE,
       COALESCE(TLNO, 'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12
  AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME ASC;