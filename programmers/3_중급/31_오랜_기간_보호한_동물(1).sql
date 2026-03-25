-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 이윤주
-- 작성일: 2026. 03. 25. 23:33:22

-- 코드를 입력하세요
SELECT NAME,
       DATETIME
FROM ANIMAL_INS
WHERE ANIMAL_ID NOT IN (SELECT ANIMAL_ID FROM ANIMAL_OUTS )
ORDER BY DATETIME ASC
LIMIT 3;