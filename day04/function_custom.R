# 사용자 정의 함수
# 자주 사용할 로직이 담긴 코드에 이름을 붙여
# 따로 만들어두고 이를 이름만으로 그 기능을
# 쓰고자 할 때 만드는 것이다.

# 함수 선언 방법
# function(매개변수1, 매개변수2,...){
#   함수를 호출했을 때 실행할 내용
#   return(반환할 값) # 소괄호()까지 꼭 써야 한다.
# }
# 위와 같이 함수를 정의했다면
# 이를 변수처럼 담아서 함수명으로 함수를 쓸 수 있다.
# 이때, 함수명(값1, 값2,...)와 같이
# 함수명 뒤에 소괄호()를 붙여 함수를
# 실행하는 데 필요한 정보를 전달해주어야
# 정상적으로 동작한다.

# 함수 정의해보기
# 1. 입력X, 반환X
print_name <- function(){
  print("이준상")
  # return() # 빈 공간으로 return하면
  # NULL값이 반환된다.
}
print_name()

# 2. 입력O, 반환X
print_name2 <- function(name){
  print(name)
}
print_name2(name="홍길동")

# 3. 입력X, 반환O
get_name <- function(){
  return("이준상")
}
name <- get_name()
print(name)

# 4. 입력O, 반환O
# 숫자 두 개를 입력받아
# 두 수를 더한 결과를 반환하는 함수
add <- function(num1, num2){
  return(num1 + num2)
}

print(add(3, 7))


