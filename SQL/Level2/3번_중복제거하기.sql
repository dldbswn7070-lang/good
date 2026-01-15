-- 3번_중복제거하기.sql

-- 문제: 중복 제거하기 (프로그래머스 SQL Level 2)
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 날짜: 2026.01.02
--문제풀이 블로그 링크:https://moon2moo.tistory.com/32

/* [시행착오 & 배운 점]
1. 상황: 정답 코드를 입력했는데 결과값이 96이 나옴. (문제 예시에는 2라고 되어 있어서 틀린 줄 알았음)
2. 시도: Gemini에게 물어보니 코드는 맞고, NULL 처리를 명확히 해주는 게 좋다고 함.
3. 해결: 혹시나 해서 채점 버튼을 눌러보니 '정답' 처리됨.
   -> 교훈: 실행 결과가 예시와 달라도, 전체 데이터에 대한 결과는 다를 수 있으니 당황하지 말고 채점해볼 것!
*/

-- [정답 코드]
SELECT COUNT(DISTINCT NAME) AS count
FROM ANIMAL_INS
WHERE NAME IS NOT NULL;