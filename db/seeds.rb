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

## 단체 (동아리, 소모임)
Club.create(club_name: '멋쟁이사자처럼', introduce: 'Hack Your Life! 나만의 서비스를 내손으로') #1
Club.create(club_name: '개발자들', introduce: '성공회대 정통 개발 동아리 개발자들') #2 
Club.create(club_name: 'Puzzle', introduce: '성공회대 공연기획 동아리!') #3
Club.create(club_name: 'BIS', introduce: '성공회대 밴드 동아리') #4
Club.create(club_name: '극연꾼', introduce: '성공회대 연극 동아리') #5
Club.create(club_name: 'M.R.Crew', introduce: '성공회대 힙합&알앤비 동아리') #6
Club.create(club_name: 'ELPIS', introduce: '성공회대 밴드 동아리') # 7
Club.create(club_name: 'C.O.L', introduce: '성공회대 락밴드 동아리') #8 
Club.create(club_name: '스쿠빌레', introduce: '성공회대 오케스트라 동아리') #9
Club.create(club_name: '아침햇살', introduce: '성공회대 동아리 아침햇살') #10
Club.create(club_name: 'S.owl', introduce: '성공회대 개발 동아리 소울')#11
Club.create(club_name: 'Flow', introduce: '성공회대 농구 동아리')#12
Club.create(club_name: '애오라지', introduce: '성공회대 민중가요 동아리') #13
Club.create(club_name: 'JOY', introduce: '성공회대 기독교 동아리') #14
Club.create(club_name: '탈', introduce: '성공회대 사물놀이패 동아리') #15
Club.create(club_name: 'CCC', introduce: '성공회대 기독교 동아리') #16




# 단체 옵션
Option.create(club_id: 1, apply_active: 1) # 멋쟁이 사자처럼 옵션
Option.create(club_id: 2, apply_active: 0) # 개발자들 옵션
Option.create(club_id: 3, apply_active: 1) # 퍼즐자들 옵션
Option.create(club_id: 4, apply_active: 1)
Option.create(club_id: 5, apply_active: 1)
Option.create(club_id: 6, apply_active: 0)
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





# 사이트 관리자
User.create(email: 'admin', password: '123456',
            department_id: 1, name: '사이트 관리자', phone_number: '000-0000-0000',
            mail: 'admin@admin', grade_id: '0', authorization: 0)
            
# 단체 관리자
User.create(email: 'likelion_admin', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 관리자', phone_number: '000-0000-0000',
            mail: 'likelion@admin', grade_id: '0', authorization: 1)
            
User.create(email: 'devdogs_admin', password: '123456',
            department_id: 3, name: '개발자들 관리자', phone_number: '000-0000-0000',
            mail: 'devdogs@admin', grade_id: '0', authorization: 1)
            
User.create(email: 'puzzle_admin', password: '123456',
            department_id: 3, name: 'Puzzle 관리자', phone_number: '000-0000-0000',
            mail: 'puzzle@admin', grade_id: '0', authorization: 1)

# 일반 유저
User.create(email: 'likelion_user1', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원1', phone_number: '000-0000-0000',
            mail: 'likelion@user1', grade_id: '1', authorization: 2)
            
User.create(email: 'likelion_user2', password: '123456',
            department_id: 3, name: '멋쟁이 사자처럼 회원2', phone_number: '000-0000-0000',
            mail: 'likelion@user2', grade_id: '2', authorization: 2)
            
User.create(email: 'devdogs_user1', password: '123456',
            department_id: 3, name: '개발자들 회원1', phone_number: '000-0000-0000',
            mail: 'devdogs@user1', grade_id: '1', authorization: 2)
            
User.create(email: 'devdogs_user2', password: '123456',
            department_id: 3, name: '개발자들 회원2', phone_number: '000-0000-0000',
            mail: 'devdogs@user2', grade_id: '2', authorization: 2)


#7
User.create(email: '201812120', password: '123456',
            department_id: 6, name: '김모모', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#8
User.create(email: '201415034', password: '123456',
            department_id: 4, name: '한땡땡', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '2', authorization: 2)
#9
User.create(email: '201125034', password: '123456',
            department_id: 2, name: '홍호호', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#10
User.create(email: '201235434', password: '123456',
            department_id: 8, name: '박뚜뚜', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#11
User.create(email: '201834234', password: '123456',
            department_id: 8, name: '조비비', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '2', authorization: 2) 
#12
User.create(email: '208664234', password: '123456',
            department_id: 4, name: '유미', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2) 
#13
User.create(email: '203322234', password: '123456',
            department_id: 3, name: '바비', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '1', authorization: 2) 
#14
User.create(email: '252334234', password: '123456',
            department_id: 2, name: '웅', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '4', authorization: 2)             
#15
User.create(email: '242344234', password: '123456',
            department_id: 1, name: '편집장', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '1', authorization: 2) 

#16           
User.create(email: '201635034', password: '123456',
            department_id: 2, name: '함진경', phone_number: '000-0000-0000',
            mail: 'guest@user', grade_id: '3', authorization: 2)
#17            
User.create(email: '201814102', password: '123456',
            department_id: 1, name: '박 결', phone_number: '000-0000-0000',
            mail: '1@1', grade_id: '1', authorization: 2)            

# 멋쟁이 사자처럼 단체 소속
ClubMember.create(club_id: 1, user_id: 2)
ClubMember.create(club_id: 1, user_id: 5)
ClubMember.create(club_id: 1, user_id: 8)
ClubMember.create(club_id: 1, user_id: 9)
ClubMember.create(club_id: 1, user_id: 10)
ClubMember.create(club_id: 1, user_id: 11)
ClubMember.create(club_id: 1, user_id: 12)
ClubMember.create(club_id: 1, user_id: 13)
ClubMember.create(club_id: 1, user_id: 14)
ClubMember.create(club_id: 1, user_id: 15)
ClubMember.create(club_id: 1, user_id: 16)

# 개발자들 단체 소속
ClubMember.create(club_id: 2, user_id: 3)
ClubMember.create(club_id: 2, user_id: 6)
ClubMember.create(club_id: 2, user_id: 7)
ClubMember.create(club_id: 2, user_id: 5)
ClubMember.create(club_id: 2, user_id: 12)
ClubMember.create(club_id: 2, user_id: 13)
ClubMember.create(club_id: 2, user_id: 14)
ClubMember.create(club_id: 2, user_id: 15)

# Puzzle 단체 소속
ClubMember.create(club_id: 3, user_id: 4)
ClubMember.create(club_id: 3, user_id: 13)
ClubMember.create(club_id: 3, user_id: 14)
ClubMember.create(club_id: 3, user_id: 15)
ClubMember.create(club_id: 3, user_id: 16)


#지원 양식
ApplyForm.create(club_id: 1, title1: '지원 동기는 무엇인가요?', title2: '만들고 싶은 서비스는 무엇인가요?' , title3: '살면서 기억에 남는 고난을 적어주세요..', title4: '기억에 남는 서비스가 있나요?', title5: '마지막으로 하고 싶은 말을 적어주세요')
# ApplyForm.create(club_id: 2, title1: '개발자들 질문1', title2: '개발자들 질문2', title3: '개발자들 질문3')
ApplyForm.create(club_id: 3, title1: '기획한 적이 있으면 어떤 것을 기획했는지 알려주세요.', title2: '만약 기획을 한다면 어떤 기획을 하고 싶으세요?', title3: '마지막으로 할 말 적어주세요.')
ApplyForm.create(club_id: 4, title1: '어떤 악기를 다룰 수 있나요?', title2: '좋아하는 노래를 말해주세요.', title3: '연습 가능한 시간 적어주세요.')
ApplyForm.create(club_id: 5, title1: '어떤 연기를 해보셨나요?', title2: '재밌게 본 연극 이름 말해주세dy.', title3: '연습 가능한 시간 적어주세요.', title4: '마지막으로 하고싶은 말은?')

#지원 내용
ApplyContent.create(
    apply_form_id: 1, user_id: 11, 
    content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 12, 
   content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 13, 
    content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 14, 
   content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 15, 
    content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 16, 
    content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 1, user_id: 17, 
    content1: "4차 산업혁명에 걸맞은 교육은 교실 안이 아니라 밖에서 직접 경험하고 창작하는 것이라는 이야기를 들은 적이 있습니다. 그런 의미에서 '멋쟁이사자처럼'이 하는 그룹 공부와 해커톤 대회는 지금 대학에서 누릴 수 있는 가장 4차 산업에 걸맞은 교육 형태라는 생각이 들었습니다. '멋사'는 학교에서 제공할 수 없는 창의적이며 유연하고 즐거운 배움의 기회가 될 것이라 생각합니다. 이런 기회를 놓칠 수 없기에 '멋사'에 지원하게 되었습니다.
그리고 밤샘 프로젝트 진행은 제가 정말 좋아하는 일이기도 합니다.  여름에 있을 해커톤 대회가 벌써 기대됩니다.!", 
    content2: "개인용 데이터 분석 시스템입니다. 데이터 과학 분야가 떠오르고 있지만 그 혜택을 받는 곳은 거대한 기관이나 사업 등에 그치고 있습니다. 데이터 활용은 개인의 생활 영역에서도 아주 유용하게 쓰일 수 있다고 생각합니다. 이런 시스템은 생활 패턴 분석과 같은 일상 영역이나 특정 교수님의 시험 데이터를 분석해서 성향을 뽑아내는(?) 응용 영역에서도 유용할 것이라 생각합니다.이", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "SNS를 예로 들면 좋았던 서비스는 싸이월드이고, 반대는 페이스북입니다. 그 이유는 기록물 탐색의 용이성에서 싸이월드가 페이스북에 비해 더 좋았기 때문입니다. SNS는 타인과 소통하는 플렛폼이지만 개인의 기록 공간이기도 합니다. 싸이월드는 자신의 기록을 원하는 카테고리에 정리할 수 있었지만 페이스북은 그 기능을 갖추지 못하고 있습니다. 페이스북에서 과거에 썼던 글을 찾기 위해서는 끝없는 스크롤을 내려야 하기 때문에 손가락이 고생하게 됩니다..", 
    content5: "열심히 하겠습니다! 멋쟁이 사자처럼 화이팅!!!!!!!!")
ApplyContent.create(
    apply_form_id: 3, user_id: 18, 
    content1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content5: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ApplyContent.create(
    apply_form_id: 3, user_id: 10, 
    content1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content5: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    ApplyContent.create(
    apply_form_id: 3, user_id: 15, 
    content1: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content3: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content4: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
    content5: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
    
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