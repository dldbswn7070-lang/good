-- 36번_입양시각구하기(1).sql
-- 출처: 부트캠프 SQL 코드카타 / 59412번
-- 문제: 입양 시각 구하기(1) (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 날짜: 2026.01.14 

/* [문제 풀이 흐름 (Pseudocode) & 복습]
   1. 가져오기: HOUR() 함수를 사용해서 시간을 쪼개고, 그 개수(COUNT)를 가져온다.
   2. 대상: ANIMAL_OUTS 테이블에서.
   3. 조건: 09:00 ~ 19:59 사이의 데이터만 (WHERE HOUR(DATETIME) BETWEEN 9 AND 19).
   4. 그룹화: 시간대별로 묶는다 (GROUP BY HOUR).
   5. 정렬: 시간순 오름차순 (ORDER BY HOUR).
   
   [시행착오 & 배운 점]
   - "시간을 쪼개는 함수(HOUR)가 기억이 안 나서 찾아봄."
   - SQL에서 날짜/시간 함수(YEAR, MONTH, DAY, HOUR, MINUTE)는 자주 쓰이니 기억해두자!
*/

SELECT HOUR(DATETIME) AS HOUR,
       COUNT(*) AS COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 19
GROUP BY HOUR(DATETIME)
ORDER BY HOUR;