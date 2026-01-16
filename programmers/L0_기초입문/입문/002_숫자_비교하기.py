# 숫자 비교하기
# 프로그래머스 L0 (기초·입문)
# 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/120807
# 알고리즘: 기초
# 작성자: 이윤주
# 작성일: 2026. 01. 16. 10:22:05

# 숫자비교하기.py
# 문제 : 숫자 비교하기 / 프로그래머스 120807번
# 링크 : https://school.programmers.co.kr/learn/courses/30/lessons/120807
# 날짜 : 2026.01.16
# 문제풀이링크 :
# 소요시간 : 5분

def solution(num1, num2):
    """
    [코드분석 & 문법 설명]
        1. def solution(num1, num2):
           - def: "나 지금 함수 만든다!" (선언)
           - solution: "이 함수 이름은 solution이야."
           - (num1, num2): "재료로 숫자 두 개를 받을 거야."
           - : (콜론): "자, 이제 내용물 시작한다!"
        2. if num1 == num2:
           - if : 나 지금 조건 만든다! 참(TRUE)일때만 할거야!
           - num1 == num2: num1이랑 num2가 같으면이 조건이야.
           - :(콜론) : 내용물 시작한다!
        3. return 1
           - return 1 : if 조건이 참(TRUE)이면 1을 밖으로 던져줘(반환)!
        4. else:
           - else : 그 외의 상황일 때 어떻게 할지 정해보자!
        5. return -1
           - return -1 : 조건 외의 경우엔 -1을 밖으로 던져줘!
    """
    if num1 == num2:
        return 1
    else:
        return -1