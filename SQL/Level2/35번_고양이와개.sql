-- 문제: 고양이와 개는 몇 마리 있을까 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 날짜: 2026.01.14
-- 내 블로그 풀이: https://moon2moo.tistory.com/61
/*
[문제 풀이 흐름 / 수도코드]
1. 가져오기: ANIMAL_TYPE과 그 개수(COUNT)를 선택한다.
2. 대상: ANIMAL_INS 테이블에서 가져온다.
3. 그룹화: ANIMAL_TYPE(종류)별로 묶는다.
4. 정렬: ANIMAL_TYPE을 기준으로 오름차순 정렬한다 (Cat -> Dog).
*/

-- [정답 코드]
SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;