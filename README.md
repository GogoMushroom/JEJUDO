제주º는 제주도 여행 모임 사이트, 커뮤니티로써 다른 사람들과 함께 여행을 하길 원하는 이용자들을 연결해줌과 동시에 여행 장소를 추천해주는 서비스 입니다.

---

## ⏰개발 기간

![개발일정](https://user-images.githubusercontent.com/87971936/147195130-394f90e8-3f2a-4ef2-83c9-3b8ba411fb7d.png)

---

## 🏋️‍♂️주요 기능

- 관리자모드
    - 회원관리
        - 신고 누적 회원에 대한 이용 정지 및 복구 기능
    - 여행지관리
        - 추천 여행지 CRUD
- 커뮤니티
    - 자유 게시판
        - 커뮤니티 목적의 자유 게시판
    - 장소 추천/ 리뷰 게시판
        - 지도 API를 기반으로 한 사용자들 간 여행지 리뷰 및 추천 게시판
- 여행자 매칭
    - 일반 모드
        - 여행의 목적이 같은 여행자들이 만날 수 있도록 함 
    - 랜덤 추천 모드
        - 여행자 참여 후 일정 시작 시 설정한 일정과 지역에 맞는 장소를 랜덤하게 추천
    - 게임 모드
        - 여행자 참여 후 일정 시작 시 장소와 미션(인증)을 주고 미션을 수행 시 다음 일정을 공개
    - 채팅기능
        - 페이지 내에서 여행자들 간 채팅 가능
        - 

---



## 👩‍🏫**ER Diagram**


![ERDIAGRAM](https://user-images.githubusercontent.com/87971936/147195201-56a548c5-b2fb-4c33-b23d-07d429e93093.png)

---

## 📘사용 기술

![사용기술](https://user-images.githubusercontent.com/87971936/147195205-b18569a0-b50b-42b1-96bb-a353bb435085.png)

---

## 📽️발표 영상

[https://www.youtube.com/watch?v=CrMlff0BLYs](https://www.youtube.com/watch?v=CrMlff0BLYs)

## 😢아쉬운점

- 타 플렛폼 API를 이용한 로그인을 구현해보지 못한 점
- UI가 직접 볼 때에는 깔끔하고 예뻤지만 발표에는 가시성이 좋지 않았다. 그리고 각자의 페이지를 만들었기 때문에 마지막으로 UI를 통일하는 작업이 필요했다. UI를 전담하는 사람이 있었으면 좋았을 것 같다.
- 채팅을 구형하는 대신3초에 1번씩 페이지를 새로고침 시켜서 실시간 채팅이 가능한 것 처럼 보이게 했다. 그리고 나중에는 이것 때문에 탈퇴기능에 대한 오류도 났다. 다음에는 꼭 채팅도 구현하자
- 로딩창 을 만들었는데 생각보다 로딩이 빨라서 필요 없다고 판단했다. 처음부터 꼭 필요한 것만 만들자!


