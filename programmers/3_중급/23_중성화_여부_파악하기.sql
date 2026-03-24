-- 중성화 여부 파악하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409
-- 작성자: 이윤주
-- 작성일: 2026. 03. 24. 21:28:33

-- 코드를 입력하세요
SELECT ANIMAL_ID,
       NAME,
       CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' THEN 'O'
       WHEN SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
       ELSE 'X' END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;