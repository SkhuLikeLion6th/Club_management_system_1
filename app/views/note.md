  <div class="header">
    <div class="header-wrapper">
        <div class="header-bottom">
            <div class="top-menu-outline">
              <% if current_user == nil %>
  				  		<a class="top-menu" href="/users/sign_in">로그인</a>
  				  		<a class="top-menu" href="/users/sign_up">회원가입</a>
  				  	<% else %>
  				  	  <a class="top-menu" href="/users/index">내 정보</a>
  				  	  <a class="top-menu" href="/users/sign_out">로그아웃</a>
  				  	<% end %>
            </div>
            <a class="logo-link" href="/">
                <img class="logo" src="/assets/logo.png" alt="logo-img" width="250px">
            </a>
            <div class="menu">
                <!--<a class="menu-yellow" href="#">전체 회원 목록</a> 사이트 관리자만 볼 수 있음-->
                <a class="menu-pink" href="/club/index">단체 목록</a>
                <a class="menu-yellow" href="/club/appliable_club">모집중</a>
                <a class="menu-pink" href="/meetings">달력</a>
                <a class="menu-yellow video_index" href="/video/index">동영상</a>
  				      <% if current_user != nil %>
  				        <% if current_user.authorization == '0' %>
      			        <a class="menu-pink" href="/club/member_management">회원 관리</a>
      			      <% elsif current_user.authorization == '1' %>
      			        <a class="menu-pink" href="/club/member_management">회원 관리</a>
      			      <% elsif current_user.authorization == '2' %>
                      <a class="menu-pink" href="/club/my_club">가입한 단체</a>
      			      <% else %>
      			      <% end %>
  				      <% end %>
				      
            </div>
        </div>
    </div>
  </div>
  
  <!---->
  
  
    <div class="content-outline">
      
        <!-- 단체별 행사 등 광고 -->
        <div class="carousel_box">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block w-100" src="/assets/LIKELION.png" alt="First slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="/assets/ad_1.jpg" alt="Second slide">
                </div>
                <div class="carousel-item">
                  <img class="d-block w-100" src="/assets/concert_1.jpg" alt="Third slide">
                </div>
              </div>
              <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
        </div>
        
        <!---->
        
  <footer>
    <div class="footer-outline">
      <div class="footer-content">
        <div class="footer-top">
          <img src="/assets/logo-footer.png" alt="logo-footer" class="logo-footer">
          <div class="footer-name">
            <p class="name-item">만든이 :</p>
            <a href='https://github.com/Seungpang' class="name-item"><p>김승래</p></a>
            <a href='https://github.com/HamJinKyoung' class="name-item"><p>함진경</p></a>
            <a href='https://github.com/Kyeul' class="name-item"><p>박결</p></a>
            <a href='https://github.com/HanHyunsoo' class="name-item"><p>한현수</p></a>
            <a href='https://github.com/hde1018' class="name-item"><p>홍다은</p></a>
          </div>
          <div class="social-buttons">
            <!-- 동연 페이스북 연결 -->
            <a href="https://www.facebook.com/SkhuLion/"><img src="/assets/facebook-l.png" alt="facebook" class="social-img"></a>
            <a href="https://www.facebook.com/clubsofskhu/"><img src="/assets/facebook-c.png" alt="facebook" class="social-img"></a>
          </div>
        </div>
        
        <div class="footer-bottom">
          <p class="footer-description">Made By LIKELION : 멋쟁이 사자처럼</p>
          <p class="footer-description">서울특별시 구로구 연동로 320</p>
          <p class="footer-description">대표번호: 070-0000-0000</p>
          <p class="footer-description">문의: aricheck@gmail.com</p>
        </div>
        
      </div>
    </div>
  </footer>
  
  
  <!--index-> 동아리 목록-->
          <!--club index-->
      <div class="mainpage-club">
        <div class="mainpage-club-title">동아리 목록</div>
        
        <div class="mainpage-club-card-align">
            <% @clubs.each do |i| %>
                <div class="mainpage-club-card">
                    <div class="mainpage-club-index-top">
                        <a href="/club/club_view/<%= i.id %>">
                          <img src="/assets/clubs/<%=i.id%>.jpg" class="club-img" alt="square" width="100%">
                        </a>
                        <div class="mainpage-club-index-name">
                          <a href="/club/club_view/<%= i.id %>"><%= i.club_name %></a>
                        </div>
                    </div>
                    <svg class="svg-line" height="25" width="150">
                        <line x1="0" y1="0" x2="150" y2="0" style="stroke: #FFD0D6; stroke-width:5" />
                    </svg>
                    <div class="mainpage-club-index-intro">
                      <p><%= i.introduce %></p>
                    </div>
                </div>  
            <% end %>
        </div>
      </div>
    </div>
    
    <!--login-->
    
    

<div class="login_body">
  <div class="loginbox">
    <img src="/assets/user.png" class="login_person">
      <h1>로그인하기</h1>
      <%= simple_form_for(resource, as: resource_name, url: session_path(resource_name)) do |f| %>
        
        <div class="form-inputs">
          <P>학 번</P>
          <input type="text" name="user[email]" placeholler="아이디">
          <p>비밀번호</p>
          <input type="password" name="user[password]" required="false" placeholler="비밀번호">
        </div>
      
        <div class="form-actions">
          <input type="submit" name="user[submit]" value="LOGIN">
          <div>
            <a href="/users/sign_up"><p>회원가입</p></a>
            <a href="#"><p>비밀번호를 잊으셨나요?</p></a>
          </div>
        </div>
      <% end %>
  </div>
</div>  

<!--mypage-->

<% if @club_id == nil %>
    <p class="mypage-p"> 소속된 동아리가 없습니다. </p>
<% else %>
    <!--<div class="mypage_club_box">-->
    <p id="mypage-p">소속</p>
    <!--</div>-->
    <div class="mypage-above-my_club">
        <% @clubs.each do |x| %>
            <% if current_user.id == x.user_id %>
                <a href='/club/my_club' id="mypage_myclub" ><%= x.club.club_name %></a>
            <%end%>
        <% end %>
    </div>
<% end %>
<!--지원자 또는 서버 관리자 또는 동아리관리자는 지원내용 확인하는 페이지로 갈 수 있도록 버튼활성화-->

<% if ApplyContent.find_by_user_id(current_user.id) != nil || current_user.authorization == '0' %>
    <% if ApplyContent.find_by_user_id(current_user.id) != nil %>
        <p class="mypage-p">지원 여부: o</p>
    <% end %>
    <div class="button-above-button">
        <a href='/apply_content/index' id="mypage_myapply"><div id="mypage_p">지원 내용 확인</div></a>
    </div>
<% else %>
    <!--<p>지원 여부: X</p>-->
    <!--<div class="mypage-above-button">-->
    <!--    <a href='/club/index' id="mypage_myapply"><div id="mypage_p">동아리 보기</div></a>-->
    <!--</div>-->
<% end %>

<!--myclubs-->

<div class="content-outline">
    <div class="content">
        <div class="content-title">내 동아리</div>
        
        <div class="club-card-align">
            
        </div>
        
    </div>
</div>

<!--club index-->
<div>
  <div>
        <div class="club-card-align">
            <% @clubs.each do |x| %>
                <div class=" club-card">
                    <div class="club-index-top">
                        <a href="/club/club_view/<%= x.id %>">
                            <img src="/assets/clubs/<%=x.id%>.jpg" class="club-img" alt="square" width="100%">
                        </a>
                        <div class="club-index-name"><a href="/club/club_view/<%= x.id %>"><%= x.club_name %></a></div>
                        <% if user_signed_in? %>
                            현재 로그인한 유저가 서버관리자면 수정, 삭제를 할 수 있다.
                            <% if current_user.authorization == '0' %>
                                    <a href="/club/edit_club/<%= x.id %>"><div class="button-club-index">수정</div></a>
                                    <a href="/club/delete_club/<%= x.id %>"><div class="button-club-index">삭제</div></a>
                            현재 로그인한 유저가 단체 관리자이고 그 단체에 속하면 수정, 삭제 할 수 있다.
                            <% elsif current_user.authorization == '1' && @current_check_club.club_id == x.id %>
                                <a href="/club/edit_club/<%= x.id %>"><div class="button-club-index">수정</div></a>
                                <a href="/club/delete_club/<%= x.id %>"><div class="button-club-index">삭제</div></a>
                            <% end %>
                        <% end %>
                    </div>
                    <svg class="svg-line" height="25" width="150">
                        <line x1="0" y1="0" x2="150" y2="0" style="stroke: #FFD0D6; stroke-width:5" />
                    </svg>
                    <div class="club-index-intro"><p><%= x.introduce %></p></div>
                </div>  
            <% end %>
        </div>
        
    </div>
</div>


<!--club-view-->

<div class="content-outline">
    <div class="content-club-view">
        <form action = "/club/club_view/<%= @club.id %>" method="get">
            <!--단체의 이미지, 이름, 소개-->
            <div class="club-view">
                <div class="content-title"><%= @club.club_name %></div>
                <% unless @club.img_url.nil? %> 
                    <img src="<%= @club.img_url %>"/>
                <% end %>
                <img src="/assets/clubs/<%= (@club.id) %>.jpg" class="club-img" alt="square" width="300">
                <!--<img src="/assets/rectangular.png" alt="square" class="club-view-img">-->
                <div class="club-intro-detail"><p><%= @club.introduce %></p></div>
            </div>
            
            <div class="member-view">
            <!--단체의 회원 목록-->
                <div class="subheading">회원 목록</div>
                <svg class="svg-line-club-view" height="25" width="150">
                    <line x1="0" y1="0" x2="150" y2="0" style="stroke: #FFD0D6; stroke-width:5" />
                </svg>
                <div class="sub-content memeber-info">
                    <div class="row">
                        <% @members.each do |x| %>
                            <% if x.club.id == @club.id %> <!-- 현재 보고있는 클럽아이디와 각각의 멤버의 클럽아이디가 같은 것만 보여준다.-->
                                <div class="col-2">
                                    <img src="/assets/person.png" alt="person" width="80px">
                                    <div class="user-name-in-club-view"><%= x.user.name %></div>
                                </div>
                            <% end %>
                        <% end %>
                    </div>
                </div>
            </div>
            
            <div class="button-in-club-view">
                <%# if user_signed_in? %>
                    <%# if ApplyContent.find_by_user_id(current_user.id) != nil %>
                        <!--<a href="/apply_content/index"><div class="button-in-club-view-pink">지원내용 확인하기</div></a>-->
                    <%# end %>
                <%# end %>
                <a href="/club/index"><div class="button-in-club-view-yellow">되돌아가기</div></a>
                <!--현재 옵션 테이블의 apply_active가 "1"이면 지원할 수 있음-->
                <% if @current_check_option.apply_active == '1' %>
                    <!--로그인 된 상태면 현재 로그인 한 권한에 따라 보이는게 다름-->
                    <% if user_signed_in? %>
                        <!--서버 관리자인 경우-->
                        <% if current_user.authorization == '0' %>
                            <a href="/club/option_change/<%= @club.id %>"><div class="button-in-club-view-pink">지원 마감</div></a>
                            <% if ApplyForm.find_by_club_id(@club.id) == nil %>
                                <a href="/apply_form/new"><div class="button-in-club-view-yellow">지원서 양식 만들기</div></a>
                            <% else %>
                                <a href="/apply_form/edit/<%= @club.id %>"><div class="button-in-club-view-pink">지원서 양식 수정</div></a>
                            <% end %>
                            <!--<a href="/apply_content/index"><div class="button-in-club-view-yellow">지원 내용 확인</div></a>-->
                        <!--단체 관리자인 경우-->
                        <% elsif current_user.authorization == '1' %>
                            <!--현재 로그인 한 단체 관리자가 현재 클럽의 단체 관리자가 아닌경우-->
                            <% if ClubMember.find_by_user_id(current_user.id).club_id != @club.id %>
                                <a href="#"><div class="button-in-club-view-pink">지원 불가</div></a>
                            <!--현재 로그인 한 단체 관리자가 현재 클럽의 단체 관리자인 경우-->
                            <% else %>
                                <a href="/club/option_change/<%= @club.id %>"><div class="button-in-club-view-pink">지원 마감</div></a>
                                <% if ApplyForm.find_by_club_id(@club.id) == nil %>
                                    <a href="/apply_form/new"><div class="button-in-club-view-yellow">지원서 양식 만들기</div></a>
                                <% else %>
                                    <a href="/apply_form/edit/<%= @club.id %>"><div class="button-in-club-view-pink">지원서 양식 수정</div></a>
                                <% end %>
                            <% end %>
                        <!--일반 회원인 경우-->
                        <% else %>
                            <!--현재 로그인 한 일반 회원이 클럽에 소속 되어있는 경우, 지원 양식이 없는 경우-->
                            <% if @current_check_club != nil && @current_check_club.club_id == @club.id || ApplyForm.find_by_club_id(@club.id) == nil %>
                                <a href="#"><div class="button-in-club-view-pink">지원 불가</div></a>
                            <!--현재 로그인 한 일반 회원이 클럽에 소속 되어있지 않은 경우-->
                            <% else %>
                                <a href="/apply_content/new/<%=@club.id%>"><div class="button-in-club-view-pink">지원하기</div></a>
                            <% end %>
                        <% end %>
                    <% else %>
                        <!--로그인이 안되어 있으면 지원하기 버튼을 누르면 로그인 창으로 감.-->
                        <a href="/users/sign_in"><div class="button-in-club-view-yellow">지원하기</div></a>
                    <% end %>
                <!--현재 옵션 테이블의 apply_active가 "0"이면 지원할 수 없음-->
                <% else %>
                    <!--현재 로그인한 아이디가 보고있는 클럽에 속해있고 단체 관리자이면 지원을 마감할 수 있음.-->
                    <% if user_signed_in? && current_user.authorization == '0' %>
                        <a href="/club/option_change/<%= @club.id %>"><div class="button-in-club-view-pink">지원 시작</div></a>
                        <% if ApplyForm.find_by_club_id(@club.id) == nil %>
                            <a href="#"><div class="button-in-club-view-yellow">지원서 양식 만들기</div></a>
                        <!--<%# else %>-->
                        <!--    <a href="/apply_form/edit/<%= @club.id %>"><div class="button-in-club-view-yellow">지원서 양식 수정</div></a>-->
                        <% end %>
                        <!--<a href="/apply_content/index"><div class="button-in-club-view-pink">지원 내용 확인</div></a>-->
                    <% elsif user_signed_in? && current_user.authorization == "1" %>
                        <% if @current_check_club != nil && @current_check_club.club_id == @club.id %>
                            <a href="/club/option_change/<%= @club.id %>"><div class="button-in-club-view-pink">지원 시작</div></a>
                            <% if ApplyForm.find_by_club_id(@club.id) == nil %>
                                <a href="/apply_form/new"><div class="button-in-club-view-yellow">지원서 양식 만들기</div></a>
                            <% else %>
                                <a href="/apply_form/edit/<%= @club.id %>"><div class="button-in-club-view-yellow">지원서 양식 수정</div></a>
                            <% end %>
                            <!--<a href="/apply_content/index"><div class="button-in-club-view-pink">지원 내용 확인</div></a>-->
                        <% else %>
                            <a href="#"><div class="button-in-club-view-pink">권한없음</div></a>
                        <% end %>
                    <% else %>
                        <a href="#"><div class="button-in-club-view-pink">지원 불가</div></a>
                    <% end %>
                <% end %>
            </div>
        </form>
    </div>
</div>

<!---->

<div class="clubmember-outline">
  <div class="clubmember-content">
    <% if current_user.authorization == '0' %>
        <div class="clubmember-title">전체 회원 목록</div>
        <table class="clubmember-table">
          <div>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">전화번호</th>
              <th scope="col">이메일</th>
              <th scope="col">학번</th>
              <th scope="col">학과</th>
              <th scope="col">학년</th>
              <th scope="col">소속 단체</th>
              <th scope="col"></th>
            </tr>
          </div>
        
        <% @members.each do |x| %>
          <div>
              <tr>
                <td><%= x.user.name %></td>
                <td><%= x.user.phone_number %></td>
                <td><%= x.user.mail %></td>
                <td><%= x.user.email %></td>
                <td><%= x.user.department.department_name %></td>
                <td><%= x.user.grade_id %></td>
                <td><%= x.club.club_name %></td>
                <td><a id="clubmember-del" href = "/club/delete_club_member/<%= x.id %>">삭제</a></td>
              </tr>
          </div>
        <% end %>
        </table>
    <% elsif current_user.authorization == '1' %>
        <div class="clubmember-title"><%= ClubMember.find_by_user_id(current_user.id).club.club_name %> 회원 목록</div>
        <table class="clubmember-table">
          <div>
            <tr>
              <th scope="col">이름</th>
              <th scope="col">전화번호</th>
              <th scope="col">이메일</th>
              <th scope="col">학번</th>
              <th scope="col">학과</th>
              <th scope="col">학년</th>
              <th scope="col"></th>
            </tr>
          </div>
        <% @members.each do |x| %>
            <% if @club_check.club_id == x.club_id %>
                <div>
                    <tr>
                      <td><%= x.user.name %></td>
                      <td><%= x.user.phone_number %></td>
                      <td><%= x.user.mail %></td>
                      <td><%= x.user.email %></td>
                      <td><%= x.user.department.department_name %></td>
                      <td><%= x.user.grade_id %> </td>
                      <td><a id="clubmember-del" href = "/club/delete_club_member/<%= x.id %>">삭제</a></td>
                    </tr>
                </div>
            <% end %>
        <% end %>
        </table>
        <div class="button-in-club-members">
          <a href="/apply_content/index">
            <div class="button-apply-content-confirm">지원자 관리</div>
          </a>
        </div>
    <% end %>
  </div>
</div>


