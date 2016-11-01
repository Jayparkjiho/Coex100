<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
   <meta name="naver-site-verification" content="145d0ef395b841d2a4f4591cbdbab4d463f14961"/>
   <title>웹가이드북 | 트립큐레이터</title>
   <link rel="profile" href="http://gmpg.org/xfn/11">
   <link rel="pingback" href="http://trip-curator.co.kr/xmlrpc.php">
   <link rel="alternate" type="application/rss+xml" title="트립큐레이터 &mdash; 피드" href="http://trip-curator.co.kr/feed">
      
      <style type="text/css">
img.wp-smiley,
img.emoji {
   display: inline !important;
   border: none !important;
   box-shadow: none !important;
   height: 1em !important;
   width: 1em !important;
   margin: 0 .07em !important;
   vertical-align: -0.1em !important;
   background: none !important;
   padding: 0 !important;
}

.filters .sort-group--btns .title {
   width: 11% !important;
}
</style>
<link rel='stylesheet' id='wpa-css-css'  href='http://trip-curator.co.kr/wp-content/plugins/wp-attachments/styles/0/wpa.css?ver=4.4.5' type='text/css' media='all' />
<link rel='stylesheet' id='smoothness-css'  href='http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css?ver=4.4.5' type='text/css' media='all' />
<link rel='stylesheet' id='project-style-css'  href='http://trip-curator.co.kr/wp-content/themes/tripcurator/css/style.css?ver=4.4.5' type='text/css' media='all' />
<script type='text/javascript' src='http://trip-curator.co.kr/wp-includes/js/jquery/jquery.js?ver=1.11.3'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
<link rel='https://api.w.org/' href='http://trip-curator.co.kr/wp-json/' />
<link rel="canonical" href="http://trip-curator.co.kr/web-guide-book" />
<link rel="alternate" type="application/json+oembed" href="http://trip-curator.co.kr/wp-json/oembed/1.0/embed?url=http%3A%2F%2Ftrip-curator.co.kr%2Fweb-guide-book" />
<link rel="alternate" type="text/xml+oembed" href="http://trip-curator.co.kr/wp-json/oembed/1.0/embed?url=http%3A%2F%2Ftrip-curator.co.kr%2Fweb-guide-book&#038;format=xml" />


   <!-- BEGIN TRACKJS -->
   <script type="text/javascript">window._trackJs = { token: '7ff748ae47ce4199be6a81ac0453e1cc' };</script>
   <script type="text/javascript" src="http://d2zah9y47r7bi2.cloudfront.net/releases/current/tracker.js"></script>
   <!-- END TRACKJS -->
</head>

<body class="page page-id-6 page-template-default singular page-web-guide-book">
<a class="skip-link sr-only" href="#content">Skip to content</a>


<main id="main" class="site-main" role="main">
     <div id="content" class="site-content" role="main">


<div class="page-content">

   <section class="section-sub section-webguide--list">
      <div class="container">
         <h1 class="section-title visible-xs"><span><em>내게 맞는</em> 웹가이드북 찾기</span></h1>
         <div class="filters">
            <div class="sort-group sort-group--btns">
               <div class="inner">
                  <div class="sortbox s01 sync">
                     <h2 class="title">카테고리별</h2>
                     <div class="btn-group button-desc" data-filter-group="district">
                        <input type="button" class="btn btn-filter is-checked" id="9" name="place_type" value="전부"/>
                        <input type="button" class="btn btn-filter" id="1" name="place_type" value="박람회"/>
                        <input type="button" class="btn btn-filter" id="2" name="place_type" value="문화/여가"/>
                        <input type="button" class="btn btn-filter" id="3" name="place_type" value="식당"/>
                        <input type="button" class="btn btn-filter" id="4" name="place_type" value="디저트/카페"/>
                        <input type="button" class="btn btn-filter" id="0" name="place_type" value="기타"/>
                     </div>
                  </div>
                  <div class="sortbox s02">
                     <h2 class="title">선호도별</h2>
                     <div class="btn-group button-desc" data-filter-group="type">
                        <button class="btn btn-filter is-checked" data-filter=".all">전체</button><button class="btn btn-filter feature" data-filter=".feature">10대</button><button class="btn btn-filter view" data-filter=".view">20대</button><button class="btn btn-filter food" data-filter=".food">30대</button><button class="btn btn-filter shop" data-filter=".shop">40대</button><button class="btn btn-filter cafe-bar" data-filter=".cafe-bar">남자</button><button class="btn btn-filter culture" data-filter=".culture">여자</button>   </div>
                  </div>
               </div>
            </div>
            <div class="sort-group sort-group--keyword">
               <div class="inner">
                  <div class="sortbox s03">
                     <h2 class="title">키워드 검색</h2>
                     <label>
                        <span class="screen-reader-text">키워드 검색</span>
                        <input type="text" class="keyword-field inp" id="schkeyword" name="" placeholder="키워드를 입력해주세요." value="">
                     </label>
                     <input type="button" class="btn btn-dark keyword-submit" id="keword-button" value="검색">
                  </div>
               </div>
            </div>
         </div>
         
         <div class="webguidebook-list " id="filterResult">
            <div id="sex_list" class="isolist list-thumbnail type_webguide">
               
<!-- <div id="post-2717" class="item lm saga food ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/140%eb%85%84%ec%9d%98-%eb%a7%9b-%eb%8b%a4%ec%bc%80%ec%95%bc" title="140년의 맛 다케야" class="bd" rel="bookmark">
               <div class="post-tag">
            푸드         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/DSF2973-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="_DSF2973" srcset="http://trip-curator.co.kr/wp-content/uploads/DSF2973-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/DSF2973-1024x683.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/DSF2973.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           140년의 맛 다케야         </h2>
         <div class="excerpt">
            전통 가옥에서 맛보는 장어구이         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2709" class="item lm saga view ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%eb%8f%8c%ed%95%98%eb%a5%b4%eb%b0%a9%ec%9d%b4-%ec%9e%88%eb%8a%94-%ed%95%98%eb%8f%84%eb%af%b8%ec%82%ac%ed%82%a4" title="돌하르방이 있는 하도미사키" class="bd" rel="bookmark">
               <div class="post-tag">
            절경         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/DSF5152-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="_DSF5152" srcset="http://trip-curator.co.kr/wp-content/uploads/DSF5152-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/DSF5152-1024x683.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/DSF5152.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           돌하르방이 있는 하도미사키         </h2>
         <div class="excerpt">
            연인들이 사랑을 속삭이는 하트 미사키         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2702" class="item lm saga culture ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%ec%84%9d%ed%83%84%ec%99%95%ec%9d%98-%ec%a3%bc%ed%83%9d-%ea%b5%ac-%eb%8b%a4%ec%b9%b4%ed%86%a0%eb%a6%ac%ec%a3%bc%ed%83%9d" title="석탄왕의 주택 구 다카토리주택" class="bd" rel="bookmark">
               <div class="post-tag">
            문화         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/DSF2807-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="_DSF2807" srcset="http://trip-curator.co.kr/wp-content/uploads/DSF2807-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/DSF2807-1024x683.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/DSF2807.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           석탄왕의 주택 구 다카토리주택         </h2>
         <div class="excerpt">
            서양과 일본의 조화가 담긴 건축물         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2691" class="item lm saga culture ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%eb%ac%b4%ed%95%99%ec%84%b1%ec%9d%b4%eb%9e%80-%eb%b3%84%eb%aa%85%ec%9d%84-%ea%b0%80%ec%a7%84-%ea%b0%80%eb%9d%bc%ec%93%b0%ec%84%b1" title="무학성이라 불리는 가라쓰성" class="bd" rel="bookmark">
               <div class="post-tag">
            문화         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/DSF2768-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="_DSF2768" srcset="http://trip-curator.co.kr/wp-content/uploads/DSF2768-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/DSF2768-1024x683.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/DSF2768.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           무학성이라 불리는 가라쓰성         </h2>
         <div class="excerpt">
            천수각에서 내려다 보는 가라쓰의 전경         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2672" class="item lm nagasaki saga oita fukuoka feature ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%ea%b7%9c%ec%8a%88-%ec%a7%80%ec%97%ad-%eb%a0%8c%ed%84%b0%ec%b9%b4-%ec%98%88%ec%95%bd" title="규슈 지역 렌터카 예약" class="bd" rel="bookmark">
               <div class="post-tag">
            특집기사         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/kyusyurt_07131-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="kyusyurt_07131" srcset="http://trip-curator.co.kr/wp-content/uploads/kyusyurt_07131-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/kyusyurt_07131-1024x683.jpg 1024w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           규슈 지역 렌터카 예약         </h2>
         <div class="excerpt">
            렌터카 예약 시 포켓와이파이 1일 할인쿠폰 증정         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2295" class="item lm okinawa shop feature food ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%ec%9d%b4%ec%98%a8%eb%aa%b0-%ec%98%a4%ed%82%a4%eb%82%98%ec%99%80-%eb%9d%bc%ec%9d%b4%ec%b9%b4%eb%ac%b4%eb%9d%bc%ec%9d%b4%ec%bb%b4" title="이온몰 오키나와 라이카무(라이컴)" class="bd" rel="bookmark">
               <div class="post-tag">
            숍         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/aeon_rycom03-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="aeon_rycom03" srcset="http://trip-curator.co.kr/wp-content/uploads/aeon_rycom03-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/aeon_rycom03.jpg 900w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           이온몰 오키나와 라이카무(라이컴)         </h2>
         <div class="excerpt">
            오키나와 최대 쇼핑몰에서 먹고 즐기자         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2221" class="item lm okinawa beach feature ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/%ec%98%a4%ed%82%a4%eb%82%98%ec%99%80%ec%9d%98-%ec%88%a8%ec%96%b4-%ec%9e%88%eb%8a%94-%eb%b9%84%ec%b9%98%eb%a5%bc-%ec%b0%be%ec%95%84%eb%b3%b4%ec%9e%90" title="오키나와의 숨어 있는 비치를 찾아보자" class="bd" rel="bookmark">
               <div class="post-tag">
            비치         </div>
            <div class="post-thumbnail">
         <img width="520" height="347" src="http://trip-curator.co.kr/wp-content/uploads/yagaji01-520x347.jpg" class="attachment-medium size-medium wp-post-image" alt="yagaji01" srcset="http://trip-curator.co.kr/wp-content/uploads/yagaji01-520x347.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/yagaji01-1024x683.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/yagaji01.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           오키나와의 숨어 있는 비치를 찾아보자         </h2>
         <div class="excerpt">
            숨은 보석같은 비치 3곳         </div>
      </div>
   </a>
</div>#post-##
<div id="post-2068" class="item lm miyako okinawa yoron ishigaki feature ">
   <a href="http://trip-curator.co.kr/archives/webguidebook/event1" title="포켓와이파이 1일 할인 이벤트" class="bd" rel="bookmark">
               <div class="post-tag">
            특집기사         </div>
            <div class="post-thumbnail">
         <img width="520" height="367" src="http://trip-curator.co.kr/wp-content/uploads/pop_03-520x367.jpg" class="attachment-medium size-medium wp-post-image" alt="pop_03" srcset="http://trip-curator.co.kr/wp-content/uploads/pop_03-520x367.jpg 520w, http://trip-curator.co.kr/wp-content/uploads/pop_03-1024x724.jpg 1024w, http://trip-curator.co.kr/wp-content/uploads/pop_03-200x141.jpg 200w, http://trip-curator.co.kr/wp-content/uploads/pop_03.jpg 1200w" sizes="(max-width: 520px) 100vw, 520px" />      </div>
      <div class="post-content">
         <h2 class="title">
           포켓와이파이 1일 할인 이벤트         </h2>
         <div class="excerpt">
            오키나와 렌터카 예약하고 포켓와이파이 1일 할인쿠폰 받자         </div>
      </div>
   </a>
</div>#post-##            </div>.isolist.list-thumbnail
            <button type="button" class="load-more load-more-posts">더보기</button>  -->        
            </div>
      </div>
   </section>

   <form class="check" id="check" name="check" action="" method="post">
      <input type="hidden" name="fdistrict" value=".all">
      <input type="hidden" name="ftype" value=".all">
      <input type="hidden" name="fkeyword" value="">
   </form>

   <!-- <div class="filter-setting" style="display: none;">
      <div class="setting district"></div>
      <div class="setting type"></div>
      <div class="setting-keyword"></div>
   </div> -->

</div><!-- .page-content -->


  </div><!-- #content -->




<!-- <script type='text/javascript' src='http://trip-curator.co.kr/wp-content/plugins/uploadingdownloading-non-latin-filename/non-latin.js?ver=1.1.4'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-content/themes/tripcurator/js/jquery.timepicker.min.js'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-includes/js/jquery/jquery.form.min.js?ver=3.37.0'></script>
<script type='text/javascript' src='http://code.jquery.com/ui/1.11.4/jquery-ui.js'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-content/themes/tripcurator/assets/modernizr/modernizr.js'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-content/themes/tripcurator/js/script.js'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-content/themes/tripcurator/js/project.js'></script>
<script type='text/javascript' src='http://trip-curator.co.kr/wp-includes/js/wp-embed.min.js?ver=4.4.5'></script> -->
<script src="script/jquery-3.1.0.min.js"></script>
<script>
	var currentPage = '';
   	var place_type='';

   	$(function(){
  		$.ajax({
      		url : 'getList',
      		type : 'post',
      		data : {
         		'place.place_type' : 9,
      			'currentPage' : 1
      		},
      		success : function(data) {
         		$(data.list_place).each(function(index, item) {
            		var np = addLogContent(item);
            		$('#sex_list').append(np);
            		/* var log_id = item.log_id;
            		$('.'+log_id).css('background-image','url(img/'+item.member_id+ '/' + item.log_id+'/'+item.main_photo_name + ')');
            		*/
         		}); 
      		}
   		});//ajax 
   	
		$('input[type=button]').on('click',function() {
			currentPage = 1;
	    	console.log("처음 로딩 시 현재페이지: " + currentPage);
	    	/*화면 준비 후 AJAX로 로그 로딩 */
	    	/* var member_id = '<s:property value="%{#session.login.member_id}"/>'
	    	console.log('세션에 저장된 member_id : ' + member_id);
	    	var data = {
	       		'member_id' : member_id
	    	}; */
	    	var place_type = '';
	    	
			place_type = $(this).val();
			if (place_type === '박람회') {
				place_type = 1;
			}
			else if(place_type === '문화/여가'){
				place_type = 2;
			}
			else if(place_type === '식당'){
				place_type = 3;
			}
			else if(place_type === '디저트/카페'){
				place_type = 4;
			}
			else if(place_type === '기타'){
				place_type = 0;
			}
			else if(place_type === '전부'){
				place_type = 9;
			}
	
			alert(place_type + "place_type")
	    	
	   		$.ajax({
	       		url : 'getList',
	       		type : 'post',
	       		data : {
	          		'place.place_type' : place_type,
	       			'currentPage' : currentPage
	       		},
	       		success : function(data) {
	       			$('#sex_list').empty();
	          		$(data.list_place).each(function(index, item) {
	             		var np = addLogContent(item);
	             		$('#sex_list').append(np);
	             		alert("after success" + place_type);
	             		/* var log_id = item.log_id;
	             		$('.'+log_id).css('background-image','url(img/'+item.member_id+ '/' + item.log_id+'/'+item.main_photo_name + ')');
	             		*/
	          		}); 
	       		},
	       		complete: function(){
	       			$(document).scroll(function() {
	       		       var maxHeight = $(document).height();
	       		       var currentScroll = $(window).scrollTop() + $(window).height();

	       		       console.log(maxHeight); //6000
	       		       console.log(currentScroll); //증가 값
	       		       alert(place_type);
	       		       
	       		       if (maxHeight <= currentScroll + 10) {
	       		          /* AJAX를 연결하여 데이터를 받아옵니다.*/

	       		          currentPage += 1; // 다음페이지가 되야 하므로 현재 페이지+1
	       		          console.log("스크롤후 현재페이지: " + currentPage);
	       		         /*  var member_id = '<s:property value="%{#session.login.member_id}"/>'
	       		          console.log('세션에 저장된 member_id : ' + member_id);*/

	       		          $.ajax({
	       		             url : 'getList',
	       		             type : 'post',
	       		             data : {
	       		                /* 'member_id' : member_id, */
	       		                'place.place_type' : place_type,
	       		                'currentPage' : currentPage
	       		             },
	       		             success : function(data) {
	       		                $(data.list_place).each(function(index, item) {
	       		                   var np = addLogContent(item);
	       		                   $('#sex_list').append(np);
	       		                });
	       		             }
	       		          });//ajax
	       		       }//if
	       		    });//document
	       		}
	    	});//ajax 
		});//button
	});//onload

	
	/*$('a').on("click",function(){
		$.ajax({
		      url: 'getList',
		      type: 'post',      
		      data: {"place.place_category":data},      
		      success: function(result){
		    	  alert(result.list_place);
		    	  var html;
		    	  var html2;
		    	  var list_place = result.list_place;
		    	  
		    	  for( var i = 0 ; i < list_place.length ; i ++ ){
		    		  html = "<div class='row'><div class='col s12 m7'><div class='card'><div class='card-image'>"+
		    	              +"<img src='img/Mouse.png'>"+
		    	              "<span class='card-title'>1</span></div><div class='card-content'>"+
		    	              "<p>check</p></div><div class='card-action'><a href='#'>This is a link</a>"+
		    	            "</div></div></div></div>";
		    	      html2 = "<div class='card small'>" + 
		    	      		 /*  "<h2 class='header'>Horizontal Card</h2>"+ 
		    	      		  "<div class='card horizontal'>"+
		    	      		  "<div class='card horizontal'><div class='card-image'>"+
		    	      		  "<img src=" + list_place[i].place_photo_name + ">"+
		    	      		  "</div><div class='card-stacked'>"+
		    	      		  " <div class='card-content'>"+
		    	      		  "<p>" + list_place[i].place_name + "</p></div>"+
		    	      		  "<div class='card-action'><a href='a#'>"+ "더보기" +"</a></div></div></div></div>"
		    	      $('.cardList').append(html2);
		    	  }
		      },
		      error: function(e){
		          alert('e');
		      }
		  });
	}); */
	

	
	var addLogContent = function(place) {
       /* var log_tag = '';
       $(list_place.log_tag_list).each(function(index, item) {
          log_tag += ' #' + item.log_tag_name;
       }); */
 
       var output = '';
       
       output += "<div id='"+ place.place_no + "' class='item lm'>"
       output += "<a href='' title='"+ place.place_name+ "' class='bd'>"
       output += "<div class='post-tag'>"+ place.place_category + "</div>"
       output += "<div class='post-thumbnail'>"
       output += "<img width='520' height='347' src="+ place.place_photo_name +" class='attachment-medium size-medium wp-post-image' alt='yagaji01' sizes='(max-width: 520px) 100vw, 520px' />   </div>"
       output += "<div class='post-content'>"
       output += "<h2 class='title'>"+ place.place_name + "</h2>"
       output += "</div></a></div>"
       
       return output;
 
    /* 내용 채워넣기 */
    }; 
	
</script>
</body>
</html>