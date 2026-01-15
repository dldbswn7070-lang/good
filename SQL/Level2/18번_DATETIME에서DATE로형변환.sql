-- 18번_DATETIME에서DATE로형변환.sql
-- 출처: 부트캠프 SQL 코드카타 / 59414번
-- 문제: DATETIME에서 DATE로 형 변환 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 날짜: 2026.01.04
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [시행착오 & 배운 점]
1. 초기 시도: 시분초를 빼기 위해 LIKE를 써봤으나 실패함.
2. 해결 방법: DATE_FORMAT 함수 사용.

3. [중요] 포맷 문자열의 대소문자 차이 (Format Strings)
   - %Y (대문자): 2026 (4자리 연도) -> 정답!
   - %y (소문자): 26 (2자리 연도)
   
   - %M (대문자): March (영어 월 이름)
   - %m (소문자): 03 (숫자 월) -> 정답!
   
   - %D (대문자): 1st, 2nd (서수)
   - %d (소문자): 01, 02 (두 자리 숫자) -> 정답!
   
   -> 결론: '%Y-%m-%d' 형식을 정확히 지켜야 함.
*/

-- [정답 코드]
SELECT ANIMAL_ID, NAME, 
       DATE_FORMAT(DATETIME, '%Y-%m-%d') AS '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;