-- 11번_여러기준으로정렬하기.sql
-- 출처: 부트캠프 SQL 코드카타 / 59404번
-- 문제: 여러 기준으로 정렬하기 (프로그래머스 SQL Level 1)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 날짜: 2026.01.16
--문제풀이 블로그 링크:https://moon2moo.tistory.com/42

/* [시행착오 & 배운 점]
1. 상황: 처음에 'ORDER BY NAME, DATETIME DESC' 라고 작성했는데 틀렸다고 나옴. (ASC 생략)
2. 의문: 원래 SQL에서 ASC(오름차순)는 생략하면 기본값으로 적용되는데 왜 틀렸는지 이해가 안 감.
3. 시도: 혹시나 해서 'ORDER BY NAME ASC, ...' 처럼 ASC를 명시해주니 정답 처리됨.
4. 재검증: 정답 처리 후, 다시 ASC를 빼고 제출해보니 이번엔 또 정답이 됨. (???)
   -> 결론: 시스템의 일시적 오류였거나 알 수 없는 이유가 있었음. 
   -> 하지만 명확하게 하기 위해 ASC를 적어주는 습관을 들이는 것도 나쁘지 않음.
*/

-- [정답 코드]
SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC;