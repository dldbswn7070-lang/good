-- 26번_루시와엘라찾기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59046번
-- 문제: 루시와 엘라 찾기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59046
-- 날짜: 2026.01.08
-- 문제풀이 블로그 링크:https://moon2moo.tistory.com/51

/* [문제 포인트]
   - 특정 이름(Lucy, Ella, Pickle, Rogan, Sabrina, Mitty)을 가진 동물을 조회.
   - 여러 개의 값을 검색할 때는 OR 대신 IN 연산자를 쓰는 것이 훨씬 효율적이고 깔끔함.
   - (참고) 문제 조건에 따라 아이디 순으로 정렬(ORDER BY ANIMAL_ID)이 필요할 수 있음.
*/

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY ANIMAL_ID;