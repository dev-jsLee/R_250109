# apply 계열 함수
# 많은 데이터에 함수를 적용하기 위한 함수가 존재한다.
# 1. apply(매트릭스, 1|2, 함수명)
# 

# 매트릭스 생성
mat_1 <- matrix(1:9, 3)
print(mat_1)

# sum()함수
# 전달된 값의 총합을 반환
print(sum(1:10)) # 55

# min()
# 최소값
print(min(1:10))
# max()
# 최대값
print(max(1:10))

# apply()를 사용하여 행 별로 합 계산
# 첫번째 인수에는 매트릭스
# 두번째 인수는 1은 행별로 함수 적용
# 세번째 인수는 함수명 전달
row_sums <- apply(mat_1, 1, sum)
print(row_sums)

# 2는 열별로 함수 적용
{
  col_sums <- apply(mat_1, 2, sum)
  print(col_sums)
}
# 2. lapply
# 리스트의 각 요소에 함수 적용
# 결과는 리스트 타입
{
  list_1 <- list(a = 1:5, b = 6:10)
  result <- lapply(list_1, sum)
  print(result)
  print(class(result))
}

# 3. sapply
# 리스트나 벡터의 각 요소에 함수 적용하고
# 그 결과를 벡터나 행렬로 반환
{
  result <- sapply(list_1, sum)
  print(result)
}