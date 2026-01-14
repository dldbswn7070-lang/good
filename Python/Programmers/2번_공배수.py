# 문제: 공배수 (프로그래머스 Level 0)
# 설명: 정수 number와 n, m이 주어집니다. number가 n의 배수이면서 m의 배수이면 1을, 아니라면 0을 return 하세요.
# 날짜: 2026.01.14

# [방법 1] 정석적인 if-else 풀이 (가독성이 좋음)
#2026.01.15 - if문 사용 (10분 소요)
def solution(number, n, m):
    # number가 n으로 나누어 떨어지고(AND) m으로도 나누어 떨어져야 함
    if number % n == 0 and number % m == 0:
        return 1
    else:
        return 0
    

# [방법 2] 삼항 연산자 사용 (Pythonic한 풀이)
# 문법: 값1 if 조건 else 값2
#2026.01.15 - 삼항 연산자 공부 후 추가 (복습)
def solution(number, n, m):
    return 1 if (number % n == 0 and number % m == 0) else 0