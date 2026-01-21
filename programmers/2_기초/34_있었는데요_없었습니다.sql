-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 이윤주
-- 작성일: 2026. 01. 21. 15:31:08

-- 코드를 입력하세요
SELECT A.ANIMAL_ID,
       O.NAME
FROM ANIMAL_INS A
JOIN ANIMAL_OUTS O
ON A.ANIMAL_ID = O.ANIMAL_ID
WHERE A.DATETIME > O.DATETIME
ORDER BY A.DATETIME ASC;