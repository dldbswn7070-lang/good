-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 이윤주
-- 작성일: 2026. 01. 21. 16:22:40

-- 코드를 입력하세요
SELECT O.ANIMAL_ID, 
       O.ANIMAL_TYPE,
       A.NAME
FROM ANIMAL_OUTS O
JOIN ANIMAL_INS A
ON O.ANIMAL_ID = A.ANIMAL_ID
WHERE A.SEX_UPON_INTAKE IN ("intact Male","intact Female")
and O.SEX_UPON_OUTCOME IN ("Neutered Male","Spayed Female")
ORDER BY O.ANIMAL_ID;