-- 8번_상위n개레코드.sql
-- 출처: 부트캠프 SQL 코드카타 / 59405번
-- 문제: 상위 n개 레코드 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59405
-- 날짜: 2026.01.03
--문제풀이 블로그 링크:https://moon2moo.tistory.com/37

/* [문제 포인트]
   - 동물 보호소에 가장 먼저 들어온 동물의 이름을 조회.
   - 1. 정렬: 보호 시작일(DATETIME)을 기준으로 오름차순 정렬 (옛날 날짜가 먼저 옴).
   - 2. 제한: 상위 1개만 가져오기 위해 LIMIT 1 사용.
*/

SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1;