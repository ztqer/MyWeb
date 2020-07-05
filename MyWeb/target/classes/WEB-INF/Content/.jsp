<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="Author" content="">
    <meta content="" name="design">
    <title>难成形材料增材制造技术与装备团队</title>
    <link rel="shortcut icon" href="/web/logo.ico" />
    <link rel="stylesheet" href="/web/css/bootstrap.css"/>
    <link rel="stylesheet" href="/web/css/base.css"/>
    <link rel="stylesheet" type="text/css" href="/web/css/c-style.css"/>
    <script type="text/javascript" src="/web/js/jquery-1.9.1.min.js"></script>
    <script src="/web/js/bootstrap.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/web/js/html5shiv.v3.72.min.js"></script>
    <![endif]-->
    <style>
        .zxcy-con .zxcy-tx img {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            margin: auto;
            max-width: 100%;
            max-height: 125%;
        }
        .imgWarp img{
            width: 31%;
        }
        .imgWarp img:nth-child(2){
            margin: 0 3%;
        }

    </style>
</head>
<body>
<!--头部 开始-->
<div class="logo-top">
    <div class="container">
        <div class="logo">
            <a href="/">
                <img src="/web/images/logo.png"/>
            </a>
            <h1>难成形材料增材制造技术与装备研究中心</h1>
        </div>
        <div class="top-right">
            <div class="top-input">
                <a href="javascript:;">
                <input type="text" name="search" id="txt" placeholder="搜索你想了解的内容"/>
                <span id="search"><img src="/web/images/index-icon1.png"></span>
                </a>
            </div>
            <p class="zy-qh">
                <a href="/" class="qh-zhong"><span>中</span></a>
                <a href="/en" class="qh-ying">En</a>
            </p>
        </div>
        <i class="clear"></i>
    </div>
</div>
<div class="nav1">
    <div class="nav">
        <ul class="inlist after">
            <li><a href="/">首页</a></li>
            <li><a href="/introduce">中心介绍</a></li>
            <li><a href="/dynamic">科研动态 </a></li>
            <li><a href="/member">中心成员</a></li>
            <li>

                <a id="yjfx" href="/direction?id=176">研究方向</a>

                <div class="inlist2" style="height: 255px; overflow: hidden; overflow-y: auto;">
                    <p><a href="/direction?id=176">金属粉体制备技术与装备</a></p>
                    <p><a href="/direction?id=179">增材创新设计</a></p>
                    <p><a href="/direction?id=180">金属增材制造工艺与装备</a></p>
                    <p><a href="/direction?id=181">陶瓷增材制造技术与装备</a></p>
                    <p><a href="/direction?id=182">整体增材制造工艺与装备</a></p>
                </div>
            </li>
            <li>
                <a href="/product?on=1">产品服务</a>
                <div class="inlist2">
                    <p><a href="/product?on=1">概述</a></p>
                    <p><a href="/product?on=2">硬件设备</a></p>
                    <p><a href="/product?on=3">测试设备</a></p>
                    <p><a href="/product?on=4">产品实例</a></p>
                </div>
            </li>
            <li><a href="/contactUs">联系我们</a></li>
        </ul>
    </div>
</div>
<!--<script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>-->
<script type="text/javascript">
	var clicknum = 0
	// $(".zy-qh").click(function(){
	//
    //
	// 	if(clicknum%2 != 0){
	// 		$(this).find(".qh-zhong").addClass("on");
	// 		$(this).find(".qh-ying").css({"color":"#9e217c","background":"#FFF"});
	// 		// $(this).css("background","#9e217c");
	// 	}else{
	// 		$(this).find(".qh-zhong").removeClass("on");
	// 		$(this).find(".qh-ying").css({"color":"#FFF","background":"#9e217c"});
	// 		// $(this).css("background","#9e217c");
	// 	}
	//
	// })

    $(".qh-zhong").click(function () {
        $(this).css({
            "color":"#fff"
        }).siblings().css({
            "color":"#9e217c"
        })

        $(".zy-qh").css({
                "background":"url(/web/images/a-chinese.png) left center no-repeat"
            })
    })

    $(".qh-ying").click(function () {
        $(this).css({
            "color":"#fff"
        }).siblings().css({
            "color":"#9e217c"
        })
        $(".zy-qh").css({
            "background":"url(/web/images/a-english.png) left center no-repeat"
        })
    })








    $(function() {
        $.ajax({
            url: '/api/direction',
            type: 'post',
            dataType: 'json'
        }).then(function (res){
            if (res.code == 200) {
                $("#yjfx").attr("src", "/direction?id=" + res.data);
            }
        })

    })

    $('#search').click(function(){
        var txt = $("#txt").val();
        window.location.href ="/dynamic?title="+txt;
    })


</script>
</script><!--#include file="include/top.html" -->
<!--头部 结束-->


<!-- 轮播 -->
<div class="index-lunbo1">
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2500">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators" id="carousel1">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                    <img src="/projectimg/2002200AMEP11W.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="/projectimg/200220XJ4AM39A.jpg" alt="First slide">
                </div>
                <div class="item">
                    <img src="/projectimg/200220S8SMMVOO.jpg" alt="First slide">
                </div>
            </div>
        </div>
    </div>
    <div class="zxjs-content">
        <div class="zxjs-title">
            <p class="zxjs-p1">中心介绍</p>
            <p class="zxjs-p2">introduce</p>
        </div>
        <div class="zxjs-con container">
            <div class="zxjs-pic">
                <img src="/projectimg/191113GT0LCCW3.jpg">
            </div>
            <div class="zxjs-right">
                <div class="zxjs-text">
                     南京理工大学“难成形材料增材制造技术与装备研究中心”团队是一支由教授、国际知名专家、青年教师及硕博研究生组成的创新研究队伍，团队依托数控成形技术与装备国家地方联合工程实验室、高端制造装备与技术江苏省工程实验室、中德增材制造联合实验室、工信部协同创新中心等科研平台，面向航空、航天和兵器等领域增材制造技术研发需求，重点攻关增材创新设计、智能化增材制造工艺与系统、陶瓷直接增材制造、功能结构一体化整体增材制造技术。
                </div>
                <a href="/introduce" class="zxjs-more">查看详情<img src="/web/images/index-icon11.png"></a>
            </div>
            <i class="clear"></i>
        </div>
    </div>




    <div class="kydt-content">
        <div class="zxjs-title">
            <p class="zxjs-p1">科研动态</p>
            <p class="zxjs-p2">Research Trends</p>
        </div>
        <div class="kydt-con container">
            <div class="kydt-left">
                <ul>
                    <li>
                        <a href="/dynamicdetails?id=188">
                            <p class="kydt-p1"><span>11-12</span>2019   </p>
                            <div class="kydt-jj">
                                <p class="kydt-p2">南京理工大学2018年度新闻</p>
                                <div class="kydt-p3">1月8日上午，2017年度国家科学技术奖励大会在北京人民大会堂隆重召开。党和国家领导人习近平、李克强、张高丽、王沪宁出席大会。中共中央总书记、国家主席、中央军委主席习近平向获得2017年度国家最高科学技术奖的我校王泽山院士颁发奖励证书。王泽山院士代表获奖者发言。</div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
            <div class="kydt-right">
                <div class="kydt-tc">
                </div>
            </div>
            <i class="clear"></i>
        </div>
    </div>
    <div class="zxcy-content">
        <div class="zxjs-title">
            <p class="zxjs-p1">中心成员</p>
            <p class="zxjs-p2">Team members</p>
        </div>
        <div class="zxcy-con container">
            <div class="index-lunbo">
                <div id="myCarousel1" class="carousel slide" data-ride="">
                    <!-- 轮播（Carousel）项目 -->
                    <div class="carousel-inner">
                            <div class="item active">
                                <ul>
                                    <li>
                                        <a href="/memberdetails?id=116">
                                            <span class="zxcy-tx"><img src="/projectimg/2002209MJULQ5F.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">廖文和</p>
                                                <p class="zxcy-p2">教授、博士生导师</p>
                                                <p class="zxcy-p3">难成形材料增材制造技术与装备<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=118">
                                            <span class="zxcy-tx"><img src="/projectimg/2002206COAUT37.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">刘婷婷</p>
                                                <p class="zxcy-p2">教授、博士生导师</p>
                                                <p class="zxcy-p3">难成形材料增材制造技术与装备<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=119">
                                            <span class="zxcy-tx"><img src="/projectimg/200220WRFCTQFD.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">杜宇雷</p>
                                                <p class="zxcy-p2">教授、博士生导师</p>
                                                <p class="zxcy-p3">金属粉末制备技术与装备<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                             <div class="item">
                                <ul>
                                    <li>
                                        <a href="/memberdetails?id=120">
                                            <span class="zxcy-tx"><img src="/projectimg/200220E7KYDQA7.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">张长东</p>
                                                <p class="zxcy-p2">副教授、硕士生导师</p>
                                                <p class="zxcy-p3">增材创新设计<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=121">
                                            <span class="zxcy-tx"><img src="/projectimg/20022016XUWHCF.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">韦辉亮</p>
                                                <p class="zxcy-p2">教授、硕士生导师</p>
                                                <p class="zxcy-p3">重点开展激光增材制造新工艺与新材料体系研发、增材制造物理过程与构件组织多尺度模拟仿真、激光辐照金属构件复杂传热与局部熔池流体行为机理、移动熔池约束凝固行为及构件晶粒形态演化规律、高性能金属材料增材制造形性组织一体化调控方面研究。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=122">
                                            <span class="zxcy-tx"><img src="/projectimg/200220V10BQM4W.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">周琳</p>
                                                <p class="zxcy-p2">讲师</p>
                                                <p class="zxcy-p3">工艺知识推理及工艺数据库<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                             <div class="item">
                                <ul>
                                    <li>
                                        <a href="/memberdetails?id=123">
                                            <span class="zxcy-tx"><img src="/projectimg/200220PXHU0YMQ.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">张凯</p>
                                                <p class="zxcy-p2">讲师</p>
                                                <p class="zxcy-p3">陶瓷增材制造技术与装备<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=124">
                                            <span class="zxcy-tx"><img src="/projectimg/2002205L419W62.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">肖行志</p>
                                                <p class="zxcy-p2">博士、讲师</p>
                                                <p class="zxcy-p3">开展功能结构一体化整体增材制造工艺与装备研究，实现“结构-电路-器件”整体制造。重点攻关三维导电线路高粘度喷射成形机理与在线固结工艺、PEEK结构材料高性能成形方法、器件高质量嵌入方法、整体增材制造平台研发，为下一代复杂多材料多功能产品的高效、快速制造提供技术支撑。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=125">
                                            <span class="zxcy-tx"><img src="/projectimg/200220HYW7082D.jpg"></span>
                                            <div>
                                                <p class="zxcy-p1">谢丽华</p>
                                                <p class="zxcy-p2">高级技师</p>
                                                <p class="zxcy-p3">科研助理、财务助理<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                             <div class="item">
                                <ul>
                                    <li>
                                        <a href="/memberdetails?id=126">
                                            <span class="zxcy-tx"><img src="/projectimg/20060370A3LCBJ.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Jean-Pierre Kruth</p>
                                                <p class="zxcy-p2">教授</p>
                                                <p class="zxcy-p3">Jean-Pierre Kruth教授是国际著名增材制造专家，金属激光选区熔化（SLM）技术与装备的奠基人和开拓者，长期从事增材制造技术研究；Kruth教授带领的增材制造团队主要研究领域包括：金属增材制造、陶瓷增材制造、多材料增材制造以及增材制造成形过程监测系统和成形件缺陷分析等。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=129">
                                            <span class="zxcy-tx"><img src="/projectimg/200603H6TNV44W.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Jan Van Humbeeck</p>
                                                <p class="zxcy-p2">教授</p>
                                                <p class="zxcy-p3">Jan Van Humbeeck教授是记忆合金增材制造（4D打印）国际知名专家，比利时鲁汶大学冶金和材料工程系终身教授，长期从事记忆合金、高阻尼材料的力热性能及增材制造技术研究。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=130">
                                            <span class="zxcy-tx"><img src="/projectimg/2006039OJM1OFQ.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Jozef Vleugels </p>
                                                <p class="zxcy-p2">教授</p>
                                                <p class="zxcy-p3">Jozef Vleugels教授是国际知名材料科学家，比利时鲁汶大学冶金与材料工程系终身教授，主要从事氧化物陶瓷、难成形材料增材制造技术研究，在陶瓷材料及其工艺特性的研究方面成果卓著，同时在粉末冶金、烧结工艺、电火花等离子体烧结、微波烧结等领域积累了丰硕的研究成果。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                             <div class="item">
                                <ul>
                                    <li>
                                        <a href="/memberdetails?id=131">
                                            <span class="zxcy-tx"><img src="/projectimg/200603187RV8R4.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Eric MacDonald</p>
                                                <p class="zxcy-p2">教授</p>
                                                <p class="zxcy-p3">Eric MacDonald教授是扬斯敦州立大学教授，长期从事整体功能打印技术，是国际著名的功能整体增材制造专家，领导研发了人类第一台送入太空的3D整体打印电子设备。在多材料功能打印方面，开拓性的提出了电路嵌入整体打印方法，引领国际整体功能增材制造技术发展，所研究的卫星整体打印技术在国际上具有主导地位。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=134">
                                            <span class="zxcy-tx"><img src="/projectimg/200603WEA1R4R6.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Vanmeensel Kim</p>
                                                <p class="zxcy-p2">副教授</p>
                                                <p class="zxcy-p3">Vanmeensel Kim博士，比利时鲁汶大学材料系副教授，主要研究方向包括金属和金属复合材料粉末特性，金属、陶瓷材料的激光选区熔化成型、等离子烧结以及快速成型过程中的热、电耦合仿真。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="/memberdetails?id=135">
                                            <span class="zxcy-tx"><img src="/projectimg/20060347FBAEAM.png"></span>
                                            <div>
                                                <p class="zxcy-p1">Brecht Van Hooreweder</p>
                                                <p class="zxcy-p2">副教授</p>
                                                <p class="zxcy-p3">Brecht Van Hooreweder博士，比利时鲁汶大学生产工程、机械设计及自动化系（PMA）副教授，从事研究以来，专注增材制造失效机理和疲劳性能，建立了具有世界领先水平的增材制造耐久性实验室，提出了金属多孔结构疲劳分析局部应力方法。<!--长期从事增材制造、微纳卫星、航空航天产品数字化设计.--></p>
                                                <span class="zxcy-more">了解更多</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>

                            </div>
                    </div>
                    <!-- 轮播（Carousel）导航 -->
                    <a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev"></a>
                    <a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next"></a>
                </div>
            </div>
            <a href="/member" class="zxcy-ck">查看更多<span></span></a>
        </div>
    </div>


    <div class="zxjs-content">
        <div class="container">
            <div class="zxjs-title">
                <p class="zxjs-p1">研究方向</p>
                <p class="zxjs-p2">Research direction</p>
            </div>
            <div class="yjfx-lists">
                <div class="yjfx-list">
                    <div class="yjfx-img"><img src="/projectimg/2002216I8Q5ABO.png" class="z-w100"></div>
                    <div class="yjfx-txts">
                        <div class="yjfx-txt">金属粉体制备技术与装备<!--金属粉体制备<br/>技术与装备--></div>
                        <a href="/direction?id=176">
                            <div class="yjfx-ljgd">了解更多</div>
                        </a>
                    </div>

                </div>
                <div class="yjfx-list">
                    <div class="yjfx-img"><img src="/projectimg/2002213NMOW1NK.jpg" class="z-w100"></div>
                    <div class="yjfx-txts">
                        <div class="yjfx-txt">增材创新设计<!--金属粉体制备<br/>技术与装备--></div>
                        <a href="/direction?id=179">
                            <div class="yjfx-ljgd">了解更多</div>
                        </a>
                    </div>

                </div>
                <div class="yjfx-list">
                    <div class="yjfx-img"><img src="/projectimg/200221SR4INYKJ.jpg" class="z-w100"></div>
                    <div class="yjfx-txts">
                        <div class="yjfx-txt">金属增材制造工艺与装备<!--金属粉体制备<br/>技术与装备--></div>
                        <a href="/direction?id=180">
                            <div class="yjfx-ljgd">了解更多</div>
                        </a>
                    </div>

                </div>
                <div class="yjfx-list">
                    <div class="yjfx-img"><img src="/projectimg/2002210GCU7PAR.jpg" class="z-w100"></div>
                    <div class="yjfx-txts">
                        <div class="yjfx-txt">陶瓷增材制造技术与装备<!--金属粉体制备<br/>技术与装备--></div>
                        <a href="/direction?id=181">
                            <div class="yjfx-ljgd">了解更多</div>
                        </a>
                    </div>

                </div>
                <div class="yjfx-list">
                    <div class="yjfx-img"><img src="/projectimg/200414O7UOLUTH.png" class="z-w100"></div>
                    <div class="yjfx-txts">
                        <div class="yjfx-txt">整体增材制造工艺与装备<!--金属粉体制备<br/>技术与装备--></div>
                        <a href="/direction?id=182">
                            <div class="yjfx-ljgd">了解更多</div>
                        </a>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <div class="kydt-content">
        <div class="zxjs-title">
            <p class="zxjs-p1">产品服务</p>
            <p class="zxjs-p2">Product Services</p>
        </div>
        <div class="container">
           <!-- -->            <div class="cpfw-txt"><p>
                <div>
	<p>
		<span>南京理</span>工大学“难成形材料增材制造技术与装备”增材制造团队建设有111引智基地，南京理工大学-鲁汶大学增材制造联合实验室等国际合作基地，与鲁汶大学、德克萨斯奥斯汀分校等国际一流的大学合作，每年都从经费中拨出专款，用于资助实验室人员、研究生出国交流合作和参加国际学术会议和邀请国（境）内外专家学者到实验室讲学。同时与国内航天科技集团、航天科工集团、航空工业集团、煜宸激光、兵器工业等行业重要应用企业和3D设备企业紧密合作。实验室多渠道、多层次开展的国内外合作研究工作，取得了显著成绩，得到了合作者和社会的好评。
	</p>
	<p>
		<br />
	</p>
</div>

                <div class="imgWarp">
                   <img src="/projectimg/200221PL6AV1EY.jpg" >
                   <img src="/projectimg/200221P4QSGBII.jpg" >
                   <img src="/projectimg/200221BAMM7SG9.jpg" >
                </div>

            </div>
            <div class="cpfw-div">
                <div class="zxjs-morediv">
                    <a href="/product?on=1" class="zxjs-more">查看详情 <img src="/web/images/index-icon11.png"></a>
                </div>
            </div>
           <!-- -->           <!-- -->           <!-- -->           <!-- -->           <!-- -->        </div>
    </div>
    <div class="zxjs-content">
        <div class="container">
            <div class="zxjs-title">
                <p class="zxjs-p1">联系我们</p>
                <p class="zxjs-p2">contact us</p>
            </div>
            <div class="lxwm-div">
                <div class="lxwm-img"><img src="/web/images/index-pic14_40.jpg"></div>
                <div class="lxwm-tests">
                    <div class="lxwm-test">
                        <div class="lxwm-title">实验室欢迎科研机构、企业合作交流，开放提供设计、工艺、打印、科研与产业支持服务</div>
                        <div class="lxwm-lxfslists">
                            <div class="lxwm-lxfslist"><img src="/web/images/index-icon5.png">江苏省南京市玄武区孝陵卫街200号南京理工大学机械工程学院</div>
                            <div class="lxwm-lxfslist"><img src="/web/images/index-icon6.png">025-84316606</div>
                            <div class="lxwm-lxfslist"><img src="/web/images/index-icon7.png">liutingting@mail.njust.edu.cn</div>
                        </div>
                    </div>
                    <div class="lxwm-test">
                        <div class="lxwm-title">实验室长期招收博士后</div>
                        <div class="lxwm-txt">
                            <p>申请人请将详细个人简历（附照片）发送至：</p>
                            <p>liutingting@mail.njust.edu.cn</p>
                        </div>
                        <div class="lxwm-txt">
                            <p>纸质简历邮寄至：</p>
                            <p>江苏省南京市玄武区孝陵卫街200号南京理工大学机械工程学院，刘婷婷</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="yqlj-div">
        <div class="container">
            <div class="yqlj-title"><span></span>友情链接<span>Friendship Links</span></div>
            <div class="yqlj-txts">

                <p><a href="http://www.njust.edu.cn/" target="view_window"><span>南京理工</span></a></p>


                <p><a href="http://me.seu.edu.cn/" target="view_window"><span>机械工程学院</span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://raam.njust.edu.cn" target="view_window"><span>RAAM 2020</span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>


                <p><a href="http://" target="view_window"><span></span></a></p>

            </div>
        </div>
    </div>

    <!--底部 开始-->
<div class="footer">
    <div class="foot">
        <ul class="after">
            <li><a href="/">首页</a></li>
            <li><a href="/introduce">中心介绍</a></li>
            <li><a href="/dynamic">科研动态 </a></li>
            <li><a href="/member">中心成员</a></li>
            <li><a href="/direction?id=176">研究方向</a></li>
            <li><a href="/product?on=1">产品服务</a></li>
            <li><a href="/contactUs">联系我们</a></li>
        </ul>
        <!--<p>Copyright 2018 <a href="/index">chemguan.com</a> All Rights Reserved.</p>-->
        <p>Copyright ® 2019-2020  njust.edu.cn  All Rights Reserved. 南京理工大学 版权所有   <a href="http://www.beian.miit.gov.cn" title="苏ICP备11035779号-1" target="_blank">苏ICP备11035779号-1</a> </p>
    </div>
</div>

<script type="text/javascript" src="/web/js/base.js"></script>

    <!--#include file="include/bottom.html" -->
    <!--底部 结束-->
    <script type="text/javascript">
        //选中
        $(".inlist li").eq(0).addClass("on");
    </script>
</body>
</html>


