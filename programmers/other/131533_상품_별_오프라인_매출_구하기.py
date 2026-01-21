# 상품 별 오프라인 매출 구하기
# 프로그래머스 (unknown)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
# 작성자: 이윤주
# 작성일: 2026. 01. 21. 15:15:29

-- 코드를 입력하세요
SELECT C.PRODUCT_CODE,
       SUM(C.PRICE * O.SALES_AMOUNT) AS SALES
FROM PRODUCT C
JOIN OFFLINE_SALE O
ON C.PRODUCT_ID = O.PRODUCT_ID
GROUP BY C.PRODUCT_CODE
ORDER BY SALES DESC , C.PRODUCT_CODE ASC;