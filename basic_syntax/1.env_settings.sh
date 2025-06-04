# .은 모든 변경사항을 의미 (특정 파일만 add 시키는 것도 가능)
# add는 staging area로 변경사항을 이동함을 의미
git add .

# commit은 변경사항을 확정짓고, 변경이력(commitID)을 발생.
# commit시에 staging area는 비워지고, local repository에 변경이력 발생
git commit -m "메세지"

# origin : 원격의미
git push origin 브랜치명

# github인증방법 2가지
# 1.직접 토큰 발급(권한을 통제할 수 있음, 특정 파일이나 레파지토리에대해서(?)), 2. 웹을 통한 인증(vscode, intellij 등을 통해)

# git 프로젝트 생성 방법 2가지
# 1. 원격에서 repo 생성 후 clone
# 2. 로컬에서 프로젝트 생성 후 github에 업로드
# 2-1) .git 폴더를 생성
git init
# 2-2) .git폴더에 필요한 값들이 아직 있음
# 2-2) 원격지 주소를 추가
git remote add origin 레포주소
# 다른 레포에서 클론을 받아 나의 github로 올리기
# 커밋이력 그대로 가져가기
git clone 타인repo주소
git remote set-url origin 본인repo주소
git push origin main #이미 커밋이력같은 것들이 다 있어서 그냥 push가 가능

# 커밋이력 없이 가져가기
git clone 타인레포주소
.git 폴더를 삭제
git init
git remote add origin 레포주소
git checkout -b main # 초기에는 master브랜치로 생성되고 선택되어있는 경우가 있는데 github에서는 main이 표준이기 때문에 main을 만들면서 main 브랜치로 스위칭
git add .
git commit -m "메세지"
git push origin main

# 사용자 지정
# 전역적 사용자 지정(이름, email)
git config --global user.name "유저명"
git config --global user.email "이메일명"

# git 설정 정보 조회
git config --list

# .gitignore파일은 git추적목록에서 제외
# 경로 : root경로에서 부터 모든 경로가 시작. ex)testfoler/important_config.yml
# 만약 이미 git에서 추적되고 있는 파일은 캐시 삭제 필요
git rm -r --cached .