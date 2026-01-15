-- 15번_NULL처리하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59410번
-- 문제: NULL 처리하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59410
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [NULL 값을 처리하는 3가지 방법]
   1. IFNULL(컬럼, '대체값')
      - MySQL 전용 함수.
      - 코드가 짧고 간단해서 MySQL에서 가볍게 쓸 때 좋음.
      
   2. COALESCE(컬럼, '대체값')
      - 표준 SQL 함수 (모든 DB 지원).
      - 여러 개의 인자를 넣을 수 있어 범용성이 중요할 때 사용.
      
   3. CASE WHEN
      - 가장 강력한 제어 기능.
      - NULL 뿐만 아니라 '공백('')' 등 복잡한 조건을 처리해야 할 때 유용함.
*/

-- [방법 1] IFNULL 사용 (MySQL 스타일)
SELECT ANIMAL_TYPE, 
       IFNULL(NAME, 'No name') AS NAME, 
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;

-- [방법 2] COALESCE 사용 (표준 스타일)
-- SELECT ANIMAL_TYPE, 
--        COALESCE(NAME, 'No name') AS NAME, 
--        SEX_UPON_INTAKE
-- FROM ANIMAL_INS
-- ORDER BY ANIMAL_ID;

-- [방법 3] CASE WHEN 사용 (조건부 로직)
-- SELECT ANIMAL_TYPE,
--        CASE 
--            WHEN NAME IS NULL THEN 'No name' 
--            ELSE NAME 
--        END AS NAME,
--        SEX_UPON_INTAKE
-- FROM ANIMAL_INS
-- ORDER BY ANIMAL_ID;