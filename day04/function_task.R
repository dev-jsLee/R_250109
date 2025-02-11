# 사용자 정의 함수 만들기 실습
# 실습1
# 두 개의 숫자를 전달받아
# 뺄셈-, 곱셈*, 나눗셈/
# + 몫%/%, 나머지 %%
# 위 연산을 수행하는 함수를 만들어보자.
# 뺄셈 sub
sub <- function(num1, num2){
  return(num1 - num2)
}
print(sub(10, 3)) # 7

# 곱셈 multi
multi <- function(num1, num2){
  return(num1 * num2)
}
print(multi(10, 3)) # 30

# 나눗셈 divide
divide <- function(num1, num2){
  result <- 0
  if(num2 == 0){
    print("0으로 나눌 수 없습니다.")
  } else {
    result <- num1 / num2
  }
  return(result)
}
print(divide(10, 8)) # 1.25

# 몫 quot(ient)
quot <- function(num1, num2){
  return(num1 %/% num2)
}
print(quot(10, 8)) # 1

# 나머지 remain(der)
remain <- function(num1, num2){
  return(num1 %% num2)
}
print(remain(10, 8)) # 2

# 숫자형 벡터를 전달받아
# 모든 요소를 더한 결과를
# 반환하는 함수 만들기

sum2 <- function(vec_nums){
  # 반환할 값을 담을 변수 선언 및 초기화
  result <- 0
  # 모든 요소에 대해서 반복
  for(e in vec_nums){
    # 요소를 임시변수 e에 담아
    # 기존 result의 값에 추가
    result <- result + e
  }
  # 반환
  return(result)
}
print(sum2(1:100)) # 5050