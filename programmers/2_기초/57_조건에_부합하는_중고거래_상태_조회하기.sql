-- 조건에 부합하는 중고거래 상태 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
-- 작성자: 이윤주
-- 작성일: 2026. 03. 17. 10:03:10

-- 코드를 입력하세요
SELECT BOARD_ID ,
       WRITER_ID,
       TITLE,
       PRICE,
       CASE WHEN STATUS='SALE' THEN '판매중'
       WHEN STATUS='RESERVED' THEN '예약중'
       ELSE '거래완료' END AS STATUS
FROM USED_GOODS_BOARD
WHERE DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY BOARD_ID DESC;