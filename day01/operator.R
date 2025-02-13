# 연산자
# 변수와 값을 연산하는 데 사용된다.
# 연산자의 종류
# - 최우선 연산자
# - 산술 연산자
# - 비교 연산자(관계 연산자)
# - 논리 연산자
# - 대입 연산자

# 1. 최우선 연산자
# 소괄호()로 감싼 내용을 먼저 연산한다.
# 소괄호() 더 안쪽에 깊이 있는 것부터 먼저 연산한다.
(1 + 3) * 2
1 + 3 * 2

# 2. 산술 연산자
# 사칙연산
# +, -
# 덧셈과 뺄셈

# *, /, ^
# 곱셈, 나눗셈, 거듭제곱
3 * 8 # 24
10 / 3# 3.333333
2 ^ 10 # 2의 10제곱

# %/%, %%
# 몫 연산자, 나머지 연산자
# 몫 연산자와 나머지 연산자는
# 그 결과가 항상 정수다.
10 %/% 3 # 3
10 %% 3 # 1

# 3. 비교 연산자(관계 연산자)
# 두 숫자를 비교하여 같은지, 다른지, 큰지, 작은지
# 등 크기를 비교한 결과가 참인지 거짓인지 여부를
# 반환하는 연산자다.
num1 <- 5
num2 <- 8

# 비교 연산
num1 == num2 # 같니? -> 예 -> TRUE, 아니오 -> FALSE
num1 != num2 # 다르니? TRUE
# 초과, 미만
num1 > num2 # 크니? FALSE
# 이상, 이하
num1 <= num2 # 크거나 같니? TRUE
num1 >= num2 # 작거나 같니? FALSE

# 4. 논리 연산자
# 논리형 값(TRUE, FALSE)를 조작하는 데 사용
# 두 논리값의 조건을 확인하여 결과를 도출해내는
# 연산자다.
# 4-1. AND 연산자(논리곱)
# &
# 두 논리값이 모두 참일 때 참
# 하나라도 거짓이면 결과가 거짓
T & T # T 
F & T # F
F & F # F
# 4-2 OR 연산자(합연산)
# Shift + \ -> |
# 두 조건 중 하나라도 참이면 결과가 참
# 두 조건 모두 거짓이어야 결과가 거짓
T | T # T
as.logical(T + T)
T | F # T
as.logical(T + F)
F | F # F
as.logical(F + F)

# 4-3. 논리부정(NOT)
# !논리값
# !뒤에 붙은 논리값을 반전시킨다.
!T
!F

# 변수와 연산자 실습
# 1. 변수 a와 b에 각각 10과 15를 할당하고
# 두 변수의 합, 차, 곱, 몫, 거듭제곱을 계산
a <- 10
b <- 15
a + b
a - b
a * b
a %/% b
a ^ b






