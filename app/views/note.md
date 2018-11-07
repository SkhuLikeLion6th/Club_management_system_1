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
