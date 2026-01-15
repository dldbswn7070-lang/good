-- 10번_어린동물찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59037번
-- 문제: 어린 동물 찾기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 날짜: 2026.01.03
--문제풀이 블로그 링크:https://moon2moo.tistory.com/37

/* [시행착오 & 배운 점]
1. 상황: 예시 표만 보고 '중성화 여부'가 조건인 줄 알고 시도했으나 틀림.
2. 원인: 문제 설명을 다시 읽어보니 "젊은 동물이란 INTAKE_CONDITION이 Aged가 아닌 경우"라고 작은 글씨로 적혀 있었음.
3. 해결: 
   - '같지 않다'를 표현하는 연산자(<>)를 사용하여 조건 작성.
   - WHERE INTAKE_CONDITION <> 'Aged'
*/

-- [정답 코드]
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION <> 'Aged'
ORDER BY ANIMAL_ID;