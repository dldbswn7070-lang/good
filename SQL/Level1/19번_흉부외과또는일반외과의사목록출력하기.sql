-- 19번_흉부외과또는일반외과의사목록출력하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 132203번
-- 문제: 흉부외과 또는 일반외과 의사 목록 출력하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132203
-- 날짜: 2026.01.05
--문제풀이 블로그 링크:https://moon2moo.tistory.com/44

/* [문제 포인트 & 배운 점]
   1. 날짜 포맷: DATE_FORMAT(컬럼, '%Y-%m-%d')
      -> ★중요★: 년도(Y)는 대문자, 월(m)/일(d)은 소문자! (대소문자 틀리면 결과 이상하게 나옴)
   
   2. 다중 조건: 'CS' 이거나 'GS' 인 경우.
      -> WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
      -> [꿀팁] WHERE MCDP_CD IN ('CS', 'GS') 라고 쓰면 코드가 더 깔끔해짐.
*/

SELECT DR_NAME, DR_ID, MCDP_CD, 
       DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY HIRE_YMD DESC, DR_NAME ASC;