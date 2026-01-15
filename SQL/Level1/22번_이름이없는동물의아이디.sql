-- 22번_이름이없는동물의아이디.sql
-- 문제 출처: 부트캠프 SQL 코드카타 / 59039번
-- 문제: 이름이 없는 동물의 아이디 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59039
-- 날짜: 2026.01.06
--문제풀이 블로그 링크:https://moon2moo.tistory.com/45

/* [문제 포인트 & 호기심 탐구]
   1. 기본 풀이: 이름이 없는(NULL) 데이터를 찾을 땐 WHERE NAME IS NULL 사용.
   
   2. [호기심] CASE 문으로도 필터링이 될까?
      - Gemini 답변: 가능은 하지만, WHERE 절에서 단순히 걸러내는 용도로는 잘 쓰지 않음.
      - 이유: WHERE NAME IS NULL이 훨씬 직관적이고 빠르기 때문.
      - 결론: 도구는 용도에 맞게 쓰는 게 최고다!
*/

-- [정답 코드]
SELECT ANIMAL_ID
FROM ANIMAL_INS
WHERE NAME IS NULL
ORDER BY ANIMAL_ID ASC;