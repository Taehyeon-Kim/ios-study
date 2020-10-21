# iOS-study

👨🏻‍💻🍎 iOS관련해서 공부한 내용을 정리하는 공간

### Table View 연습 01

■ 카드 레이아웃 형태의 테이블 뷰  
![스크린샷 2020-10-16 오전 12 16 45](https://user-images.githubusercontent.com/61109660/96150071-feaee680-0f44-11eb-9f5d-3090d91627d8.png)  
□ 아직 Table View Controller, Table View Cell에 클래스 파일을 연결하는 것이 미숙함.  
□ 왜 Controller 파일에 다 작성하지 않는 것이 좋을까? (cell을 dequeue 해올 때 as! TableViewCell과 같이 하는 이유는?)  
□ UI 잡는 것도 많이 어렵다. autolayout 잡는 거랑 디자인 그대로 만드는 것, 디테일한 부분이 정말 어렵다. (계속 연습 필요)  
□ 코드 안 찾아보고 물 흐르듯이 테이블 뷰를 작성할 수 있도록 연습하자.

### Table View 연습 02

■ Youtube UI - 테이블 뷰 이용해서 만들어보기  
<img width="400" alt="스크린샷 2020-10-16 오후 8 48 57" src="https://user-images.githubusercontent.com/61109660/96254910-0926ba00-0ff1-11eb-8ce5-addef9848fc7.png">  
□ Table Cell 디자인은 어느정도 익숙해졌는데, 확실히 정확한 디자인이 필요한 이유가 위치(픽셀) 잡기가 어려움  
□ 아직도 테이블 뷰 만드려면 이전 코드를 조금 참고하게 되는데, 반복할수록 나아질 거라고 생각  
□ subtitle(=detailInfo)부분에 대해 궁금한 것은 작성자, 조회수, 게시 날짜 등 3가지의 정보를 한 Label에 넣었는데 역시 분리하는 게 맞겠지? (데이터를 가공한채로 한 Label에 넣는 것이 아닌)  
□ Navigation Bar를 custom하기가 생각보다 어렵다. Navigation Item에서 title을 왼쪽 정렬하는 것까진 공부해보았다. 이 때 titleView라는 것을 이용해서 만들게 된다.  
□ 궁금한 것은 titleView에 로고와 텍스트를 addSubView를 이용해서 추가하게 되는데 이것보다는 하나의 이미지로 만들어서 깔끔하게 가는 것이 나을까?

### Table View 연습 03

■ Kakaotalk UI - 테이블 뷰 xib 이용
<img width="400" alt="스크린샷 2020-10-16 오후 8 48 57" src="https://user-images.githubusercontent.com/61109660/96389440-97b25b80-11ea-11eb-8503-18eec8ad1a78.png">  
□ 커스텀 할 cell 디자인이 많을 경우 xib로 만드는 것이 편할 수도 있을 것 같음  
□ 헤더 구분선 만드는 것이 생각보다 어려웠음 (좌우로 꽉찬 선은 만들기 쉬운데 양옆에 마진 있는 선을 만들기 좀 까다로웠음)  
□ 이번에는 유독 datasource에 작성하는 함수가 많았음 (작성 코드를 분리 시킬 필요가 있을 것 같다. 코드가 많아지면)

### Autolayout 연습 01 - TableView

<img width="300" alt="스크린샷 2020-10-21 오후 9 34 38" src="https://user-images.githubusercontent.com/61109660/96720068-44582d00-13e5-11eb-98bf-645e9aba24a8.png">

### Autolayout 연습 02 - ScrollView

![scrollview](https://user-images.githubusercontent.com/61109660/96739113-66a87580-13fa-11eb-813e-c304ce303ddb.gif)

### Autolayout 연습 03 - StackView

![stackview](https://user-images.githubusercontent.com/61109660/96738237-7a071100-13f9-11eb-9f4f-f2c0ed36dbcc.gif)

### Autolayout 연습 04 - Programmatically

<img width="1904" alt="스크린샷 2020-10-21 오후 8 53 00" src="https://user-images.githubusercontent.com/61109660/96719823-e4fa1d00-13e4-11eb-93cf-46702ec55e1f.png">
