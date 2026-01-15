-- 5번_동물수구하기.sql
-- 출처: 부트캠프 SQL 코드카타 
-- 문제: 동물 수 구하기 (프로그래머스 59406번)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59406
-- 날짜: 2026.01.03
--문제풀이 블로그 링크: https://moon2moo.tistory.com/36

/* [시행착오 & 해결 과정]
1. 상황: 처음에 DISTINCT를 썼을 때 오류가 났음.
   - 논리: "NULL이 없다고 명시되어 있지만, 중복값은 있을 수 있으니 DISTINCT로 고유값을 세야 한다"고 생각함.
   
2. 시도: DISTINCT를 빼고 다시 하니 정답 처리됨. 
   - 의문이 생겨서 다시 DISTINCT를 넣고 돌려보니 이번엔 또 정답이 됨. (시스템 일시적 오류였던 것으로 추정)

3. [최종 배운 점 & Gemini 조언]
   - ANIMAL_ID는 테이블의 '기본키(Primary Key)'임.
   - 기본키(PK)는 무조건 'NULL 불가' + '중복 불가(Unique)'라는 속성을 가짐.
   - 따라서 굳이 DISTINCT를 쓰지 않아도 중복이 없으므로 COUNT(*)나 COUNT(ANIMAL_ID)만 써도 됨.
*/

-- [가능한 정답 코드 3가지]

-- 방법 1: 가장 일반적인 방법 (PK니까 전체 행 개수 세기)
SELECT COUNT(*) AS count
FROM ANIMAL_INS;

-- 방법 2: 특정 컬럼 지정
SELECT COUNT(ANIMAL_ID) AS count
FROM ANIMAL_INS;

-- 방법 3: 중복 제거 명시 (논리적으로 틀린 건 아님)
SELECT COUNT(DISTINCT ANIMAL_ID) AS count
FROM ANIMAL_INS;