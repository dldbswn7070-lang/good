# 두 수의 나눗셈
# 프로그래머스 L0 (기초·입문)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120806
# 알고리즘: 기초
# 작성자: 이윤주
# 작성일: 2026. 01. 21. 23:48:50

# 3분
def solution(num1, num2):
    result = num1 / num2 * 1000
    return int(result)
#다른 방식으로 푸는 방법:
#def solution(num1, num2):
#return (num1 * 1000) // num2 # num1 * 1000 하고 나누면 소수점 오차 줄일 수 있어요
#// 사용하면 int() 없이도 정수로 나와요!
#def solution(num1, num2):
#return int(num1 / num2 * 1000) 내가 푼 방식을 줄인 것