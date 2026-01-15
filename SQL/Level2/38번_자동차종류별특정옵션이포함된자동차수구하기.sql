-- 38번_자동차종류별특정옵션이포함된자동차수구하기.sql
-- 출처: 부트캠프 SQL 코드카타/ 151137번
-- 문제: 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 날짜: 2026.01.15
--문제풀이 블로그 링크:https://moon2moo.tistory.com/66

/* [문제 풀이 흐름 (Pseudocode) & 시행착오]
   1. 가져오기: 자동차 종류(CAR_TYPE)와 그 개수(COUNT)를 가져옴.
   2. 대상: CAR_RENTAL_COMPANY_CAR 테이블.
   3. 조건: '통풍시트', '열선시트', '가죽시트' 중 하나라도 포함된 차.
      - [시행착오] 처음엔 OPTIONS = '통풍시트' 처럼 정확히 일치하는 것만 찾음.
      - [깨달음] "쉼표로 여러 옵션이 섞여 있으니 포함된 걸 찾아야 한다!"
      - [해결] OPTIONS LIKE '%통풍시트%' OR ... 형식으로 변경.
   4. 그룹화: 자동차 종류별로 묶음 (GROUP BY CAR_TYPE).
   5. 정렬: 자동차 종류 기준 오름차순.
*/

SELECT CAR_TYPE,
       COUNT(CAR_ID) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' 
   OR OPTIONS LIKE '%열선시트%' 
   OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE ASC;