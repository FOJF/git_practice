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

# 원격저장소로 업로드
git push origin 브랜치명
# 충돌발생시 충돌무시하고, 로컬기준으로 원격에 덮어쓰기
git push origin 브랜치명 --force