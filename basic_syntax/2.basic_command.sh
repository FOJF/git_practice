# 현재 working directory, staging area 상태 확인
git status

# .은 모든 수정/추가 사항 add
git add .
# 특정 파일만 add할 경우(경로까지 포함)
git add testfolder/test1.txt

# commit을 통해 메세지 타이틀과 메세지 내용을 커밋이력으로 생성
git commit -m "메세지 제목" -m "메세지 내용"

# git commit만 입력하고 엔터시 vi모드 -> 첫 줄 : 타이틀, 두번째줄부터 : 내용  
git commit

# commit 이력 확인
git log
git log --oneline
# HEAD 하단의 로그만 보이는 것이 아니라 모든 commit이력을 조회
# HEAD : 현재 checkout 하고 있는 commitID를 의미
git log --all 

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force

# HEAD 전환
# 특정 commit ID로 전환
git checkout commitID
# 특정 브랜치명으로 전환
git checkout 브랜치명

# pull : 원격의 변경사항을 local로 내려받는 것(fetch + merge)
git pull origin 브랜치명
# fetch : 변경사항을 로컬로 가져오지만 병합은 하지않음, 모든 브랜치의 변경사항을 가져오고 싶으면 --all
git fetch origin/main
git fetch -all
# 차이 비교, 근데 UI가 편하긴 함
git diff 커밋ID 커밋ID
git diff 브랜치명1, 브랜치명2

# 커밋 취소
# 가장 최신의 커밋 취소
git reset head~1
git reset head^

# 이미 push된 커밋 사항 되돌리는 커밋ID 생성
git revert commitID

# 작업 중인 사항을 임시 저장
git stash
# 마지막으로 저장한 사항을 꺼내서 적용
git stash pop
# 저장한 목록 조회
git stash list
# 저장 목록 전체 삭제
git stash clear

# tag 관련 명령어
# 가장 최신의 commit에 tag가 명시
git tag 태그버전명(v1.1)
# tag release : 코드의 commit, push와 상관없이 별개로 작업진행
git push origin 태그버전명
# tag 목록 조회
git tag

# 브랜치 생성
# 현재 checkout 되어있는 브랜치를 기준으로 새로운 브랜치 생성
git branch 브랜치명

# 새로운 작업시작시에, main을 최신화 한 후에 main을 기준으로 branch 생성