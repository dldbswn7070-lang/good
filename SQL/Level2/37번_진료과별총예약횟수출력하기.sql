-- 37번_진료과별총예약횟수출력하기.sql
-- 출처: 부트캠프 SQL 코드카타/ 132202번
-- 문제: 진료과별 총 예약 횟수 출력하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 날짜: 2026.01.15
--문제풀이 블로그 링크:https://moon2moo.tistory.com/66

/* [문제 풀이 흐름 (Pseudocode) & 시행착오]
   1. 날짜 조건: 2022년 5월.
      - [시행착오] 처음엔 월(Month)만 신경 썼다가 2022년을 놓침.
      - [해결] WHERE DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05' 로 정확하게 필터링.
      
   2. 그룹핑: 진료과 코드(MCDP_CD)별로 묶기 -> GROUP BY MCDP_CD.
   
   3. 카운트: 예약한 환자수 세기 -> COUNT(PT_NO).
   
   4. 정렬: 예약 건수 오름차순, 같다면 진료과 코드 오름차순.
   
   5. [★중요★ 채점 기준]
      - "컬럼 순서를 바꿔서 틀림!"
      - 문제에서 요구하는 컬럼 순서(진료과 코드, 예약건수)를 정확히 지켜야 정답 처리됨.
      - 쿼리 로직이 맞아도 순서가 다르면 오답 처리되는 냉혹한 세계...
*/

SELECT MCDP_CD AS '진료과 코드',
       COUNT(PT_NO) AS '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m') = '2022-05'
GROUP BY MCDP_CD
ORDER BY COUNT(PT_NO) ASC, MCDP_CD ASC;