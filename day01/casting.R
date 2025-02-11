# 형변환
# 하나의 데이터 타입에서 다른 데이터 타입으로
# 그 형태를 변환하는 것을 의미한다.
# 이러한 형변환을 지원하는 함수가 여럿 있다.
# 1. 숫자형으로 변환
# as.numeric(값)
# 다른 자료형을 숫자형으로 변환
# 주로 문자열이 숫자로 구성되어 있을 때 사용
num1 <- as.numeric("123")
class(num1)
as.numeric(T)
class(as.numeric(T))
T + T # 자동 형변환(암묵적, 암시적)
T + 3

# 2. 문자열로의 변환
# as.character(값)
# 숫자나 논리값을 문자열로 표현할 때 주로 사용
as.character(T)
as.character(T + T)
as.character(1024)

# 3. 논리형으로의 변환
# as.logical(값)
# 0은 FALSE로, 0이 아닌 숫자는 TRUE로 변환된다.
as.logical(1024) # TRUE
as.logical(0) # FALSE

# 문자열을 논리형으로 바꾸면 NA가 나온다.
as.logical("asd") # NA

# NA
# 결측치라고 부르며, 값이 없음을 의미한다.
# 다른 연산자와 연산시 항상 NA가 나온다.
