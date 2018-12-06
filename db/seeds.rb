# rake db:drop
# rake db:migrate
# rake db:seed

## 학부, 학과
Department.create(department_name: 'IT융합자율학부')
Department.create(department_name: '컴퓨터공학')
Department.create(department_name: '소프트웨어공학')
Department.create(department_name: '정보통신공학')
Department.create(department_name: '글로컬IT')
Department.create(department_name: '미디어컨텐츠학부')
Department.create(department_name: '신문방송학')
Department.create(department_name: '디지털컨텐츠')
Department.create(department_name: '사회융합자율학부')
Department.create(department_name: '사회과학')
Department.create(department_name: '사회복지학')
Department.create(department_name: '경영학')
Department.create(department_name: '인문융합자율학부')
Department.create(department_name: '일어일본학')
Department.create(department_name: '중어중국학')
Department.create(department_name: '기독교문화')

## 학년
Grade.create(grade_name: '1학년')
Grade.create(grade_name: '2학년')
Grade.create(grade_name: '3학년')
Grade.create(grade_name: '4학년')
# //회원가입  양식 끝



## 단체 (동아리, 소모임)
Club.create(club_name: '멋쟁이사자처럼', introduce: 'Hack Your Life! 나만의 서비스를 내손으로') #1
Club.create(club_name: '<One>동아리', introduce: 'TEST 동아리 입니다.') #2
Club.create(club_name: '<Two>동아리', introduce: 'TEST 동아리 입니다.') #3
Club.create(club_name: '<Three>동아리', introduce: 'TEST 동아리 입니다.') #4
Club.create(club_name: '개발자들', introduce: '성공회대 정통 개발 동아리 개발자들') #5
Club.create(club_name: 'Puzzle', introduce: '성공회대 공연기획 동아리!') #6
Club.create(club_name: 'BIS', introduce: '성공회대 밴드 동아리') #7
Club.create(club_name: '극연꾼', introduce: '성공회대 연극 동아리') #8
Club.create(club_name: 'M.R.Crew', introduce: '성공회대 힙합&알앤비 동아리') #9
Club.create(club_name: 'ELPIS', introduce: '성공회대 밴드 동아리') # 10
Club.create(club_name: 'C.O.L', introduce: '성공회대 락밴드 동아리') #11
Club.create(club_name: '스쿠빌레', introduce: '성공회대 오케스트라 동아리') #12
Club.create(club_name: '아침햇살', introduce: '성공회대 동아리 아침햇살') #13
Club.create(club_name: 'S.owl', introduce: '성공회대 개발 동아리 소울')#14
Club.create(club_name: 'Flow', introduce: '성공회대 농구 동아리')# 15
Club.create(club_name: '애오라지', introduce: '성공회대 민중가요 동아리') #16
Club.create(club_name: 'JOY', introduce: '성공회대 기독교 동아리') #17
Club.create(club_name: '탈', introduce: '성공회대 사물놀이패 동아리') #18
Club.create(club_name: 'CCC', introduce: '성공회대 기독교 동아리') #19
Club.create(club_name: 'FC SKHU', introduce: '성공회대 축구 동아리') #20
Club.create(club_name: '팝콘', introduce: '성공회대 영화감상 동아리') #21
Club.create(club_name: 'NUTEE', introduce: '성공회대 교내 커뮤니티 동아리') #22
Club.create(club_name: 'IVF', introduce: '성공회대 기독학생회 동아리') #23





# 단체 옵션
Option.create(club_id: 1, apply_active: 1) # 멋쟁이 사자처럼 옵션
Option.create(club_id: 2, apply_active: 1) # 가상 동아리 1
Option.create(club_id: 3, apply_active: 1) # 가상 동아리 2
Option.create(club_id: 4, apply_active: 1) # 가상 동아리 3

Option.create(club_id: 5, apply_active: 0) # 개발자들 옵션
Option.create(club_id: 6, apply_active: 0) # 퍼즐자들 옵션
Option.create(club_id: 7, apply_active: 0) 
Option.create(club_id: 8, apply_active: 0)
Option.create(club_id: 9, apply_active: 0)
Option.create(club_id: 10, apply_active: 0)
Option.create(club_id: 11, apply_active: 0)
Option.create(club_id: 12, apply_active: 0)
Option.create(club_id: 13, apply_active: 0)
Option.create(club_id: 14, apply_active: 0)
Option.create(club_id: 15, apply_active: 0)
Option.create(club_id: 16, apply_active: 0)
Option.create(club_id: 17, apply_active: 0)
Option.create(club_id: 18, apply_active: 0)
Option.create(club_id: 19, apply_active: 0)
Option.create(club_id: 20, apply_active: 0)
Option.create(club_id: 21, apply_active: 0)
Option.create(club_id: 22, apply_active: 0)
Option.create(club_id: 23, apply_active: 0)





# 사이트 관리자
User.create(email: 'admin', password: 'admin1212',
            department_id: 1, name: '사이트 관리자', phone_number: '000-0000-0000',
            mail: 'admin@admin', grade_id: '0', authorization: 0)  #1
            
# 단체 관리자
User.create(email: 'likelion_admin', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 관리자', phone_number: '000-0000-0000',
            mail: 'likelion@admin', grade_id: '0', authorization: 1) #2
            
User.create(email: 'devdogs_admin', password: '123456',
            department_id: 3, name: '개발자들 관리자', phone_number: '000-0000-0000',
            mail: 'devdogs@admin', grade_id: '0', authorization: 1) #3
            
User.create(email: 'puzzle_admin', password: '123456',
            department_id: 3, name: 'Puzzle 관리자', phone_number: '000-0000-0000',
            mail: 'puzzle@admin', grade_id: '0', authorization: 1) #4

User.create(email: 'fcskhu_admin', password: '123456',
            department_id: 3, name: 'FC-SKHU 관리자', phone_number: '000-0000-0000',
            mail: 'fcskhu@admin', grade_id: '0', authorization: 1) #5



# 일반 유저
User.create(email: 'likelion_user1', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원1', phone_number: '000-0000-0000',
            mail: 'likelion@user1', grade_id: '1', authorization: 2) #6
            
User.create(email: 'likelion_user2', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원2', phone_number: '000-0000-0000',
            mail: 'likelion@user2', grade_id: '2', authorization: 2)#7
            
User.create(email: 'devdogs_user1', password: '123456',
            department_id: 3, name: '개발자들 회원1', phone_number: '000-0000-0000',
            mail: 'devdogs@user1', grade_id: '1', authorization: 2)#8
            
User.create(email: 'devdogs_user2', password: '123456',
            department_id: 3, name: '개발자들 회원2', phone_number: '000-0000-0000',
            mail: 'devdogs@user2', grade_id: '2', authorization: 2)#9


#10
User.create(email: '201812120', password: '123456',
            department_id: 6, name: '김모모', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#11
User.create(email: '201415034', password: '123456',
            department_id: 4, name: '한땡땡', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '2', authorization: 2)
#12
User.create(email: '201125034', password: '123456',
            department_id: 2, name: '홍호호', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#13
User.create(email: '201235434', password: '123456',
            department_id: 8, name: '박뚜뚜', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#14
User.create(email: '201834234', password: '123456',
            department_id: 8, name: '조비비', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '2', authorization: 2) 
#15
User.create(email: '208664234', password: '123456',
            department_id: 4, name: '유미', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2) 
#16
User.create(email: '203322234', password: '123456',
            department_id: 3, name: '바비', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '1', authorization: 2) 
#17
User.create(email: '252334234', password: '123456',
            department_id: 2, name: '웅', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '4', authorization: 2)             
#18
User.create(email: '242344234', password: '123456',
            department_id: 1, name: '편집장', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '1', authorization: 2) 

#19           
User.create(email: '223644034', password: '123456',
            department_id: 2, name: '조조', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)


#20            
User.create(email: '201815235', password: '123456',
            department_id: 1, name: '유비', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 2)    
            
#21            
User.create(email: '234534102', password: '123456',
            department_id: 1, name: '관우', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 2)   

#22            
User.create(email: '207567102', password: '123456',
            department_id: 1, name: '장비', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 2)   


#test 관리자
#23  test1 
User.create(email: 'test1', password: '123456',
            department_id: 1, name: '간옹', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 1)    

#24       test2    
User.create(email: 'test2', password: '123456',
            department_id: 1, name: '손건', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 1)   

#25          test3
User.create(email: 'test3', password: '123456',
            department_id: 1, name: '미축', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 1)   



#test1 소속
ClubMember.create(club_id: 2, user_id: 23)
ClubMember.create(club_id: 2, user_id: 15)
ClubMember.create(club_id: 2, user_id: 16)
ClubMember.create(club_id: 2, user_id: 17)
ClubMember.create(club_id: 2, user_id: 18)
ClubMember.create(club_id: 2, user_id: 19)
ClubMember.create(club_id: 2, user_id: 20)
ClubMember.create(club_id: 2, user_id: 21)
# ClubMember.create(club_id: 2, user_id: 22)

#test2 소속
ClubMember.create(club_id: 3, user_id: 24)
ClubMember.create(club_id: 3, user_id: 15)
ClubMember.create(club_id: 3, user_id: 16)
ClubMember.create(club_id: 3, user_id: 17)
ClubMember.create(club_id: 3, user_id: 18)
ClubMember.create(club_id: 3, user_id: 19)
ClubMember.create(club_id: 3, user_id: 20)
ClubMember.create(club_id: 3, user_id: 21)
# ClubMember.create(club_id: 3, user_id: 22)

#test3 소속
ClubMember.create(club_id: 4, user_id: 25)
ClubMember.create(club_id: 4, user_id: 15)
ClubMember.create(club_id: 4, user_id: 16)
ClubMember.create(club_id: 4, user_id: 17)
ClubMember.create(club_id: 4, user_id: 18)
ClubMember.create(club_id: 4, user_id: 19)
ClubMember.create(club_id: 4, user_id: 20)
ClubMember.create(club_id: 4, user_id: 21)
# ClubMember.create(club_id: 4, user_id: 22)

# 멋쟁이 사자처럼 단체 소속
ClubMember.create(club_id: 1, user_id: 2)
ClubMember.create(club_id: 1, user_id: 15)
ClubMember.create(club_id: 1, user_id: 16)
ClubMember.create(club_id: 1, user_id: 17)
ClubMember.create(club_id: 1, user_id: 18)
ClubMember.create(club_id: 1, user_id: 19)
ClubMember.create(club_id: 1, user_id: 20)
ClubMember.create(club_id: 1, user_id: 21)
ClubMember.create(club_id: 1, user_id: 22)

# # 개발자들 단체 소속
# ClubMember.create(club_id: 5, user_id: 5)
# ClubMember.create(club_id: 5, user_id: 8)
# ClubMember.create(club_id: 5, user_id: 9)
# ClubMember.create(club_id: 5, user_id: 10)
# ClubMember.create(club_id: 5, user_id: 12)
# ClubMember.create(club_id: 5, user_id: 13)
# ClubMember.create(club_id: 5, user_id: 14)
# ClubMember.create(club_id: 5, user_id: 15)

# # Puzzle 단체 소속
# ClubMember.create(club_id: 3, user_id: 6)
# ClubMember.create(club_id: 3, user_id: 13)
# ClubMember.create(club_id: 3, user_id: 14)
# ClubMember.create(club_id: 3, user_id: 15)
# ClubMember.create(club_id: 3, user_id: 16)


#지원 양식
ApplyForm.create(club_id: 1, title1: '지원 동기는 무엇인가요?', title2: '만들고 싶은 서비스는 무엇인가요?' , title3: '살면서 기억에 남는 고난을 적어주세요.', title4: '기억에 남는 서비스가 있나요?', title5: '마지막으로 하고 싶은 말을 적어주세요')
# ApplyForm.create(club_id: 2, title1: '개발자들 질문1', title2: '개발자들 질문2', title3: '개발자들 질문3')
ApplyForm.create(club_id: 2, title1: '가장 좋아하는 음식은?', title2: '가장 좋아하는 영화는?', title3: '가장 좋아하는 배우는', title4: '가장 좋아하는 음악은?', title5: '마지막으로 할 말 적어주세요.')
ApplyForm.create(club_id: 3, title1: '좋아하는 수업은?', title2: '좋아하는 책은?', title3: '좋아하는 악기는?')
ApplyForm.create(club_id: 4, title1: '어떤 연기를 해보셨나요?', title2: '재밌게 본 연극 이름 말해주세dy.', title3: '연습 가능한 시간 적어주세요.', title4: '마지막으로 하고싶은 말은?')

#지원 내용
ApplyContent.create(
    apply_form_id: 2, user_id: 10, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
ApplyContent.create(
    apply_form_id: 2, user_id: 11, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")

ApplyContent.create(
    apply_form_id: 2, user_id: 12, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")


ApplyContent.create(
    apply_form_id: 3, user_id: 10, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
ApplyContent.create(
    apply_form_id: 3, user_id: 11, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")    
    
ApplyContent.create(
    apply_form_id: 3, user_id: 12, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
ApplyContent.create(
    apply_form_id: 3, user_id: 13, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
    
ApplyContent.create(
    apply_form_id: 4, user_id: 10, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
    
ApplyContent.create(
    apply_form_id: 4, user_id: 11, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
 ApplyContent.create(
    apply_form_id: 4, user_id: 12, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
ApplyContent.create(
    apply_form_id: 4, user_id: 13, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")
    
ApplyContent.create(
    apply_form_id: 4, user_id: 14, 
    content1: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content2: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "간손미라는 단어는 삼국지 팬덤에서 예전부터 사용하던 단어다. 연의나 정사에 기초했을 수도 있지만, 주로 게임 상에서 유비의 주요 측근인 이들의 능력치가 어중간하여 언급되었을 가능성이 높다. ", 
    content5: "열심히 하겠습니다!")    
    
SApplyForm.create(
    small_group_id: 1
    )
SApplyForm.create(
    small_group_id: 2
    )    
    
SApplyForm.create(
    small_group_id: 3
    )
SApplyForm.create(
    small_group_id: 4
    )
SApplyForm.create(
    small_group_id: 5
    )    
    
SApplyForm.create(
    small_group_id: 6
    )    
SApplyForm.create(
    small_group_id: 7
    )    
SApplyForm.create(
    small_group_id: 8
    )
SApplyForm.create(
    small_group_id: 9
    )    
    
SApplyForm.create(
    small_group_id: 10
    )
SApplyForm.create(
    small_group_id: 11
    )
SApplyForm.create(
    small_group_id: 12
    )    
    
SApplyForm.create(
    small_group_id: 13
    )
SApplyForm.create(
    small_group_id: 14
    )
SApplyForm.create(
    small_group_id: 15
    )    
    
SApplyForm.create(
    small_group_id: 16
    )
SApplyForm.create(
    small_group_id: 17
    )
SApplyForm.create(
    small_group_id: 18
    )    
    
SApplyForm.create(
    small_group_id: 19
    )
SApplyForm.create(
    small_group_id: 20
    )
SApplyForm.create(
    small_group_id: 21
    )    
    
SApplyForm.create(
    small_group_id: 22
    )        