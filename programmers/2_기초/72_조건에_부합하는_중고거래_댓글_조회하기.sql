-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 이윤주
-- 작성일: 2026. 03. 18. 09:55:20


SELECT U.TITLE , 
       U.BOARD_ID , 
       G.REPLY_ID , 
       G.WRITER_ID , 
       G.CONTENTS , 
       DATE_FORMAT(G.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD U 
JOIN USED_GOODS_REPLY G
ON U.BOARD_ID = G.BOARD_ID
WHERE U.CREATED_DATE BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY G.CREATED_DATE ASC , U.TITLE ASC;