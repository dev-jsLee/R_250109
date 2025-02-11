# 파일에서 데이터 읽어오기
# 대표적인 데이터 파일 형식으로는
# - txt, xml, json, csv
# - 기타 tsv, db, ...
# 위와 같은 여러 데이터 저장 파일형식에 따라
# 해당 파일에서 데이터를 읽어올 때 사용해야 하는
# 패키지나 함수가 모두 다르다.
install.packages("stringr")
library(stringr)

library(readr)

# csv에서 데이터 읽어오기
# csv 파일이 있는 폴더 경로를 변수에 저장

# 현재 디렉토리(workspace)의 경로를 가져오는 함수
# getwd()
workspace <- getwd()
folder_path <- str_c(workspace, "/data")
# 해당 파일명과 폴더 경로를 문자열 결합으로 합치기
file_path <- str_c(folder_path, "/2024hot.csv")

# 해당 파일의 인코딩을 유추
# 인코딩 유추를 위한 패키지 설치
# if문 내부의 코드가 한 줄이라면 중괄호{}를 생략하여
# if 구문 바로 뒤에 이어서 적을 수 있다.
if(!require(readr)) install.packages("readr")
# 패키지 로드
library(readr)

# 인코딩 확인
encoding_info <- guess_encoding(file_path)$encoding[1]
print(encoding_info)

# 확인된 인코딩 정보를 csv 파일을 읽어올 때 사용한다.
data <- read.csv(file_path, fileEncoding = encoding_info)

# 읽어온 데이터의 윗부분 일부 데이터만 출력
head(data)

# ==========텍스트 파일 읽어오기================>
file_path <- str_c(folder_path, "/2024폭염.txt")
# 파일 읽기 전 인코딩 확인
file_encoding <- guess_encoding(file_path)$encoding[1]
print(file_encoding)

# 파일 읽기
data <- read.table(file_path, header=T, fileEncoding = file_encoding, sep="\t")
head(data)

# ==========json 파일 읽어오기================>
# json파일을 읽으려면 jsonlite 패키지를 설치, 부착해야 한다.
install.packages("jsonlite")
library(jsonlite)

# 파일 경로 설정
file_path <- str_c(folder_path, "/data.json")

# 인코딩 확인
encoding_info <- guess_encoding(file_path)$encoding[1]
print(encoding_info)

# json을 데이터로 읽어오기
json_data <- fromJSON(file_path)

print(json_data) # 전체 데이터
print(json_data$users) # 대상 전체 데이터

print("========XML========")
# xml 파일 데이터 읽기
# xml 파일 읽기를 위한 패키지 다운로드 및 부착
install.packages("XML")
library(XML)

# file_path <- str_c(folder_path, "/ITKC_GP_1550A.xml")
file_path <- str_c(folder_path, "/경기도 의정부시_횡단보도_이미지정보_20211130.xml")

# xml 데이터 읽어오기
data <- xmlToDataFrame(file_path)

# 데이터 확인
# 1행, 1열을 제외한 내용만 출력
data <- data[-1,-1]

head(data)





