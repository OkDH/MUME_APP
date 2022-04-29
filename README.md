# mume

A new Flutter project.

## 프로젝트 빌드하기
### Android
1. build_runner 실행으로 프로젝트에 필요한 dart 파일 생성
    - 터미널 창에 아래 순서대로 명령어 입력.
        1. flutter clean
        2. flutter pub get
        3. flutter pub run build_runner build
    
2. firebase 설정 파일을 프로젝트에 통합
    - 프로젝트 루트/android/app/google_services.json 파일 추가
    - google_services.json 위치: 파이어베이스 MUME -> 프로젝트 설정 -> android 앱 에서 확인 가능

3. 안드로이드 앱 업로드 키 통합
   - 프로젝트 루트/android/key.properties 추가
   - key.properties 파일 직접 생성 후 내부 내용은 프로젝트 관라자에게 문의.
   
### iOS