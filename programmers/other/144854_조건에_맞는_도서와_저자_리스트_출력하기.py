# 조건에 맞는 도서와 저자 리스트 출력하기
# 프로그래머스 (unknown)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
# 작성자: 이윤주
# 작성일: 2026. 01. 21. 16:30:32

-- 코드를 입력하세요
SELECT B.BOOK_ID,
       A.AUTHOR_NAME,
       DATE_FORMAT(B.PUBLISHED_DATE,'%Y-%m-%d') as PUBLISHED_DATE
FROM BOOK B
JOIN AUTHOR A
ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE B.CATEGORY = '경제'
ORDER BY B.PUBLISHED_DATE ASC;