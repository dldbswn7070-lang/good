# 오랜 기간 보호한 동물(2)
# 프로그래머스 (unknown)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
# 작성자: 이윤주
# 작성일: 2026. 01. 21. 16:03:53

-- 코드를 입력하세요
SELECT O.ANIMAL_ID,
       A.NAME
FROM ANIMAL_OUTS O
JOIN ANIMAL_INS A
ON O.ANIMAL_ID = A.ANIMAL_ID
ORDER BY O.DATETIME - A.DATETIME DESC
LIMIT 2;