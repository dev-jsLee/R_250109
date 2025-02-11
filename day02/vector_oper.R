# 벡터의 연산
vec_1 <- 1:3
vec_2 <- 4:6

# 덧셈
vec_sum <- vec_1 + vec_2
print(vec_sum) # 5 7 9

# 뺄셈
vec_minus <- vec_1 - vec_2
print(vec_minus) # -3 -3 -3

# 곱셈
vec_multi <- vec_1 * vec_2
print(vec_multi) # 4 10 18

# 나눗셈
# 나눗셈의 우항이 0이 되지 않도록 조심하자.
vec_divide <- vec_1 / vec_2
print(vec_divide) # 0.25 0.40 0.50

# 기타
# 길이가 다른 두 벡터의 연산
# 길이가 다른 두 벡터가 연산할 경우
# 두 벡터의 길이가 배수관계이면 오류 없이
# 길이가 적은 쪽이 반복하여 사용된다.
# 길이가 배수관계 아니라면
# 결과는 나오지만 경고 메시지도 같이 나온다.
vec_1 <- 1:5
vec_2 <- 1:10
print(vec_1 + vec_2) # 2  4  6  8 10  7  9 11 13 15