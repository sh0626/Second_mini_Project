<template>
    <footer class="footer">
			<div class="footer__inner">
				<div class="footer__content_first">
					<div class="footer_content left">
						<!-- <p class="title">(주)레시판</p> -->
                        <img class="footerimg" src="../../../public/common/img/img_JY/footer_logo.png" alt="footer" />
					</div>
					
					<div class="footer_content right">
						<p class="title">(주)레시판</p>
						<div class="contentus_link">
							<ul>
								<li><a href="http://www.bluerecipe.co.kr/" target="_blank">회사소개</a></li>
								<li><a style="cursor: pointer;">이용약관</a></li>
								<!-- <li class="hr">&nbsp;</li> -->
								<li><a style="cursor: pointer;">개인정보 처리방침</a></li>
								<!-- <li class="hr">&nbsp;</li> -->
                                <li><a style="cursor: pointer;">환불정책</a></li>
							</ul>
						</div>
                        <hr>
						<p class="footer__content_sub_txt">
							법인명(상호) : (주)레시판 |  사업자등록번호 : 123-45-67890  | 벤처기업 : 제 20200202202호
							<br>특허 제 20-1234567호  |  통신판매업신고 : 2020-서울관악구-3306  |   개인정보보호책임자 : 김은진
							<br>주소 : 서울 관악구 남부순환료 1820, 7층 |  대표이사 :  김선호
							<br>제휴/협력 문의 : sun@email.com  |  채용문의 :  sun@email.com
						</p>
					</div>
				</div>
			</div>
		</footer>
</template>

<style scoped>
footer{
    margin: 0;
	padding-bottom: 250px;
    /* padding: 500px; */
    border: 0;
    outline: 0;
    /* font-size: 100%; */
    /* font: inherit; */
    /* vertical-align: baseline; */
    /* font-size: 1rem; */
    /* font-weight: 400; */
    /* line-height: 1.5; */
    color: #212529;
    text-align: left;
    background-color: #dcdda0;
}

.footer__content_first {
    /* border-bottom: 1px solid #6D7987; */
    padding-bottom: 91px;
}

footer > .footer__inner {
    width: 992px;
    padding: 0;
    margin: 0 auto;
}

/* 고객센터 */
.footer_content .title {
    font-weight: bold;
    font-size: 16px;
    line-height: 23px;
    letter-spacing: -0.7px;
    color: #171F29;
    margin-bottom: 16px;
}
/* 전화번호 */
.footer_content .title {
    font-weight: bold;
    font-size: 16px;
    line-height: 23px;
    letter-spacing: -0.7px;
    color: #171F29;
    margin-bottom: 16px;
}

.footer_content.left {
    font-weight: bold;
    font-size: 24px;
    line-height: 35px;
    letter-spacing: -1.05px;
    color: #171F29;
    margin-bottom: 1px;
    margin: 15px 30px;
}

.footer_content.left{
    font-weight: 500;
    font-size: 13px;
    line-height: 19px;
    letter-spacing: -0.56875px;
    color: #8B95A2;
    margin-bottom: 26px;
}

.footer_content.right .title {
    margin-bottom: 19px;
    margin-left: 50px
}
.footer_content .title {
    font-weight: bold;
    font-size: 16px;
    line-height: 23px;
    letter-spacing: -0.7px;
    color: #171F29;
    margin-bottom: 16px;
}
/* 없어도 되면 없애기 p 태그 */
p {
    margin: 0 0 10px;
}
ol, ul{
	list-style: none;
	
}



/* 회사소개 이용약관 */
.contentus_link ul {
    margin: 0 0 14px 0;
}
.contentus_link ul li a {
    font-weight: 500;
    font-size: 13px;
    line-height: 19px;
    letter-spacing: -0.56875px;
    color: #171F29;
}
.contentus_link ul li {
    display: inline-block;
    margin: 0 30px;
}
a:focus, a:hover {
    color: #23527c;
    text-decoration: underline;
}
a:active, a:hover {
    outline: 0;
}

.footer_content.right {
    width: calc(100% - 433px);
}

.footer_content {
    float: left;
}

.footer_content .footer__content_sub_txt {
    /* margin-top: 50px; */
    font-weight: 500;
    font-size: 13px;
    line-height: 20px;
    letter-spacing: -0.56875px;
    color: #8B95A2;
}

.footerimg{
    width: 300px;
}

</style>