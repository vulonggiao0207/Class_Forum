<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="User_Control/DangNhap1.ascx" TagName="DangNhap1" TagPrefix="uc2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Welcome to LTTH1001 website</title>
    <meta name="keywords" content="violet, free css templates, CSS, HTML" />
    <meta name="description" content="Violet is one of the Free CSS Templates provided by templatemo.com" />
    <link href="templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/contentslider.css" />

    <script type="text/javascript" src="scripts/contentslider.js">

/***********************************************
* Featured Content Slider- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

    </script>

    <link rel="stylesheet" type="text/css" href="css/gallery_slider.css" />

    <script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
    </script>

    <script language="javascript" type="text/javascript" src="scripts/mootools-1.2.1-core.js"></script>

    <script language="javascript" type="text/javascript" src="scripts/mootools-1.2-more.js"></script>

    <script language="javascript" type="text/javascript" src="scripts/slideitmoo-1.1.js"></script>

    <script language="javascript" type="text/javascript">
	window.addEvents({
		'domready': function(){
			/* thumbnails example , div containers */
			new SlideItMoo({
						overallContainer: 'SlideItMoo_outer',
						elementScrolled: 'SlideItMoo_inner',
						thumbsContainer: 'SlideItMoo_items',		
						itemsVisible: 4,
						elemsSlide: 2,
						duration: 180,
						itemsSelector: '.SlideItMoo_element',
						itemWidth: 190,
						showControls:1 });
		},
		
	});
    </script>

</head>
<body>
    <form id="Form1" runat="server">
        <div id="templatemo_wrapper">
            <div id="templatemo_middle">
                <div id="mid_img_wrap">
                    <span></span>
                    <div id="slider1" class="sliderwrapper">
                        <div class="contentdiv">
                            <img src="images/slider/image_00.jpg" alt="Image 0" />
                        </div>
                        <div class="contentdiv">
                            <img src="images/slider/image_01.jpg" alt="Image 1" />
                        </div>
                        <div class="contentdiv">
                            <img src="images/slider/image_02.jpg" alt="Image 2" />
                        </div>
                        <div class="contentdiv">
                            <img src="images/slider/image_03.jpg" alt="Image 3" />
                        </div>
                    </div>
                    <div id="paginate-slider1" class="pagination">
                    </div>

                    <script type="text/javascript">
            
            featuredcontentslider.init({
                id: "slider1",  //id of main slider DIV
                contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
                toc: "#increment",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
                nextprev: ["", ""],  //labels for "prev" and "next" links. Set to "" to hide.
                revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
                enablefade: [true, 0.2],  //[true/false, fadedegree]
                autorotate: [true, 2000],  //[true/false, pausetime]
                onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
                    //previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
                    //curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
                }
            })
            
                    </script>

                </div>
                <span style="color: #0000ff; text-decoration: underline"></span>
            </div>
            <div class="cleaner">
            </div>
            <div id="templatemo_header">
                <div id="site_title">
                    <h1>
                        </h1>
                </div>
                <div id="templatemo_menu" style="text-align: left">
                    <ul>
                        <li><a href="Default.aspx" class="current">Trang chủ</a></li>
                        <li><a href="TinTuc.aspx">Tin tức</a></li>
                        <li><a href="HocHanh.aspx">Học hành</a></li>
                        <li><a href="ViecLam.aspx">Việc làm</a></li>
                        <li><a href="Default.aspx">Diễn đàn</a></li>
                        <li><a href="DangKy.aspx" class="last">Đăng ký</a></li><li> </li>
                       
                        
                    </ul>
                    <div class="cleaner" style="text-align: left">
                        <uc2:DangNhap1 ID="DangNhap1_1" runat="server" OnLoad="DangNhap1_1_Load" />
                      
                    </div>
                </div>
                <!-- end of templatemo_menu -->
            </div>
            <div id="templatemo_main">
                <div class="content_box" style="text-align: center">
                    &nbsp;&nbsp;</div>
                <div class="content_box">
                    <h2>
                        <span>Ảnh đẹp trong tuần</span></h2>
                    <div id="SlideItMoo_outer">
                        <div id="SlideItMoo_inner">
                            <div id="SlideItMoo_items">
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_01.jpg" alt="product 1" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_02.jpg" alt="product 2" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_03.jpg" alt="product 3" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_04.jpg" alt="product 4" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_05.jpg" alt="product 5" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_06.jpg" alt="product 6" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_07.jpg" alt="product 7" /></a>
                                </div>
                                <div class="SlideItMoo_element">
                                    <span></span><a href="#">
                                        <img src="images/gallery/image_08.jpg" alt="product 8" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cleaner">
                </div>
            </div>
            <!-- end of main -->
            <div class="cleaner">
            </div>
        </div>
        <!-- end of wrapper -->
        <div id="templatemo_footer_wrapper">
            <!-- end of footer -->
            <div id="footer_menu_box">
                <ol class="footer_menu">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Gallery</a></li>
                    <li><a href="#">Contact</a></li>
                </ol>
            </div>
            <div id="copyright">
                Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com"
                    target="_parent">Free CSS Templates</a> | Validate <a href="http://validator.w3.org/check?uri=referer">
                        XHTML</a> &amp; <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
            </div>
            <!-- end of templatemo_footer -->
        </div>
        <!-- end of footer wrapper -->
    </form>
</body>
</html>
