-- 29번_3월에태어난여성회원목록출력하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 131120번
-- 문제: 3월에 태어난 여성 회원 목록 출력하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120
-- 날짜: 2026.01.10
--문제풀이 블로그 링크:https://moon2moo.tistory.com/54

/* [문제 포인트 & 예리한 분석]
   1. 조건: 3월생 찾기.
      - [시행착오] LIKE '%03%' -> 2003년생(연도)이나 03일생(일)도 걸릴 위험이 있음.
      - [해결책 1] LIKE '%-03-%' -> 앞뒤에 하이픈을 붙여서 정확히 '월'만 타겟팅.
      - [해결책 2] MONTH(DATE_OF_BIRTH) = 3 -> 날짜 함수를 쓰면 가장 깔끔하고 안전함.
   
   2. NULL 처리: 전화번호(TLNO)가 NULL인 회원은 제외.
      - WHERE TLNO IS NOT NULL
      
   3. 포맷팅: DATE_FORMAT 사용 필수.
*/

-- [방법 1] 날짜 함수 사용 (가장 안전하고 추천하는 방법)
SELECT MEMBER_ID, MEMBER_NAME, GENDER, 
       DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH) = 3
  AND GENDER = 'W'
  AND TLNO IS NOT NULL
ORDER BY MEMBER_ID ASC;

-- [방법 2] LIKE 문자열 패턴 매칭 (분석해주신 내용 적용)
-- SELECT MEMBER_ID, MEMBER_NAME, GENDER, 
--        DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
-- FROM MEMBER_PROFILE
-- WHERE DATE_OF_BIRTH LIKE '%-03-%'  -- 단순히 %03% 보다 훨씬 안전함!
--   AND GENDER = 'W'
--   AND TLNO IS NOT NULL
-- ORDER BY MEMBER_ID ASC;