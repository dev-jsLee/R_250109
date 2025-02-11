# 데이터 프레임(Data Frame)
# 서로 다른 자료형의 열(column)을 포함할 수 있는
# 2차원 테이블이다.
# 각 열은 벡터로 구성되며, 
# 열의 길이는 모두 동일한 길이여야 한다.

# 데이터 프레임의 생성
# data.frame()함수를 사용하여 데이터프레임을
# 생성할 수 있다.

df <- data.frame(
  name = c("김", "이", "박"),
  age = c(30, 24, 39)
)
print(df)

# 데이터 프레임 조작
# 데이터 프레임 요약 함수
# summary(df)
print(summary(df))

# 특정 열 선택
print(df$name) # 해당 열의 벡터를 가져온다.

# 데이터 프레임에 새로운 열 추가
df$score <- c(80, 85, 79)
print(df)

# 요소에 접근하는 방법
# 1. 인덱스
print(df[1,"age"])


# 2. $예약어
print(df$name)