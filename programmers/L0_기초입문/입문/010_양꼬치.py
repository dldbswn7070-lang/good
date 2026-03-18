# 양꼬치
# 프로그래머스 L0 (기초·입문)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120830
# 알고리즘: 기초
# 작성자: 이윤주
# 작성일: 2026. 03. 18. 22:25:19

def solution(n, k):
    free = n // 10
    pay_drink = k - free
    return n*12000 + pay_drink*2000