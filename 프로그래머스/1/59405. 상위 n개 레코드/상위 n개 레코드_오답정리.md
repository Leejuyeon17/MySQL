# 📖LIMIT 함수
---
> 결과 출력 시 ROW를 제한하는 역할
➡️ 페이징 처리 쿼리에 사용됨


**시작 지점을 지정하고 싶다면?**
➡️ **OFFSET** 옵션 이용
- 몇 번째 행부터 출력할지 결정
- OFFSET 값도 0부터 시작, 첫 번째 행의 데이터를 가리키는 값 = 0

#### 기본 구조
```
SELECT * FROM USER LIMIT N
SELECT * FROM USER LIMIT N,M
```


#### 예시 (1) 
USER 테이블의 첫 번째 값부터 세 번째 결과까지 출력
```
SELECT * FROM USER
LIMIT 3
```

#### 예시 (2) OFFSET 옵션 지정
```
SELECT * FROM USER
LIMIT 0,3
```

위의 두 코드는 같은 결과를 출력한다!
