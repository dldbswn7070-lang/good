-- 12번_이름에_el이_들어가는_동물_찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59047번
-- 문제: 이름에 el이 들어가는 동물 찾기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42
/* [시행착오 & 배운 점]
1. 초기 시도: WHERE NAME = '%el%' 라고 작성함.
2. 문제점: 등호(=)는 정확히 문자가 일치하는지 비교함. 즉, 이름이 정말로 "%el%"인 동물을 찾으려 해서 실패.
3. 해결: 
   - '%' 같은 와일드카드 문자를 사용하여 '부분 일치'를 검색할 때는 반드시 'LIKE' 연산자를 써야 함.
   - WHERE NAME LIKE '%el%'
   - 추가 조건: '개(Dog)'만 조회해야 하므로 AND ANIMAL_TYPE = 'Dog' 추가.
*/

-- [정답 코드]
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%el%' 
  AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME;