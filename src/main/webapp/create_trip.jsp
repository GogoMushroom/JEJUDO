<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!doctype html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>Random Jeju | Create Trip</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/socicon.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/iconsmind.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/interface-icons.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/lightbox.min.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/theme.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/custom.css" rel="stylesheet" type="text/css" media="all" />
    <link href='https://fonts.googleapis.com/css?family=Lora:400,400italic,700%7CMontserrat:400,700' rel='stylesheet'
        type='text/css'>
</head>
<style>
    .btn_count {
        width: 25px;
        height: 25px;
        box-sizing: border-box;
        border-style: none;
        border-radius: 50%;
        background-color: rgba(166, 208, 205, 0.8);
    }

    .btn_count span {
        font-size: 15px;
        text-align: center;
        vertical-align: middle;
        font-weight: bolder;
        color: white;
    }

    #pmbutton {
        display: grid;
    }

    #areaSet,
    #name,
    #date,
    #mode-select,
    #personal,
    #rtext,
    #password,
    #licenseSet {
        background-color: rgba(130, 127, 123, 0.1);
    }

    .input-radio {
        display: inline-block;
    }

    #create_btn span {
        color: white;
        font-weight: bolder;
        font-size: large;
    }

    .text-left {
        padding-top: 10%;
    }

    #rtext {
        margin-bottom: 0%;
    }

    select {
        max-height: 80%;
    }

    #personal {
        padding-left: 20%;
    }

    #name {
        padding-left: 5%;
    }
    
    #hostInfo {
    
    padding-left: 5%;
    background-color: white
    
    
    }
    
    

    label {
        font-size: 12px;
        font-weight: bolder;
    }
</style>

<body class="scroll-assist">
    <a id="top"></a>
    <div class="loader"></div>

    <!--  Header ????????????  -->
    <jsp:include page="Header.jsp" />



    <div class="main-container transition--fade">
        <section class="height-100 cover cover-8" style="height: 90em;">
            <div class="col-md-7 col-sm-5">
                <div class="background-image-holder">
                 
                     <div>
	                     	<button class="btn " onclick="location.href='choose_join.jsp'"
	                     	
	                     	style="background-color: rgba(0, 0, 0, 0.01); margin:13vh 0 0 5vh  " >
	                     		<h4 style="margin-bottom: 0em;color: white">?????????</h4>
	                     	</button>
                     </div>
                        <div class=" " style="margin-top: 20vh; text-align: center;">
                        <h3 style="color: white">?????? ?????????</h3>
               
                    </div>
                    
                    
                    <img alt="image" src="img/pch_img_7.png" />
                </div>
            </div>

            <div class="col-md-5 col-sm-7 bg--white text-center">
                <div class="pos-vertical-center">
                    <div class="text-left">
                        <form action="insertTrip.do" method="post" enctype="multipart/form-data"
                            style="max-width: 75%;">

                            <div class="row" style="margin-bottom: 5%;">
                                <div class="col-sm-7">
                                    <img src="img/???????????????.jpg" ;
                                        style="height: 150px; width: 150px; border-radius: 50%; overflow: hidden; border-style: none;"
                                        id="preview-image"> <input style="display: block;" type="file" id="input-image"
                                        name="uploadFile">

                                </div>
                                <div class="col-sm-5">
                                    <br> <br>
                                    <h5>
                                        ????????? ????????????<br>???????????????.
                                    </h5>
                                </div>
                            </div>

                     <div class="row">
                        <div class="col-sm-12">
                           <div class="input-with-icon">
                              <label>Host ??????</label>                                  
                                 <input type="text" name="tmId"
                                 id="hostInfo" value="${hostInfo.mId }" readonly="readonly" />
                                 
                                 <input type="text" name="tmName"
                                 id="hostInfo" value="${hostInfo.mName }" readonly="readonly" />   
                                 
                                 <input type="hidden" name="tmRole" value="h"/>      
                                                         
                                 <input type="hidden" name="mSeq" value="${hostInfo.mSeq }"/>                              
                           </div>
                        </div>
                     </div>

                     <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-with-icon">
                                        <label>?????? ??????</label> <input type="text" name="trName" id="name"
                                            placeholder="?????? ????????? ????????? ?????????." />
                                    </div>
                                </div>
                            </div>
                            <!-- ??????/?????? row -->
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="input-with-icon">
                                        <label>??????</label> <select name="trDateSet" id="date">
                                            <option value="">??????</option>
                                            <option value="0">??????</option>
                                            <option value="1">1???</option>
                                            <option value="2">2???</option>
                                            <option value="3">3???</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-with-icon">
                                        <label>??????</label> <select name="trMode" id="mode-select">
                                            <option value="">??????</option>
                                            <option value="????????????">????????????</option>
                                            <option value="????????????">????????????</option>
                                            <option value="??????????????????">????????????</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- ??????/?????? row -->
                            <div class="row" style="margin-bottom: 0%;">
                                <div class="col-sm-6">
                                    <div class="input-with-icon">
                                        <label>??????</label> <select name="trAreaSet" id="areaSet">
                                            <option value="">-??????-</option>
                                            <option value="east">???</option>
                                            <option value="west">???</option>
                                            <option value="south">???</option>
                                            <option value="north">???</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="input-with-icon">
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <label>??????</label>
                                                <div class="input-with-icon">
                                                    <input type="text" name="trPersonnelSet" id="personal" value="2"
                                                        readonly="readonly" />
                                                </div>
                                            </div>
                                            <div class="col-sm-4" id="pmbutton" style="padding-top: 25px;">
                                                <button type="button" class="btn_count"
                                                    onclick="fnCalCount('p', this);">
                                                    <span>+</span>
                                                </button>
                                                <button type="button" class="btn_count"
                                                    onclick="fnCalCount('m', this);">
                                                    <span>-</span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="input-with-icon">
                                        <label>??????</label> <select name	="trGenderSet" id="date">
                                           <option value="X" selected="selected">-??????-</option>
                                            <option value="M">???</option>
                                            <option value="F">???</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="input-with-icon">
                                        <label>????????????</label> <select name="trTransportationSet" id="date">
                                            <option value="X" selected="selected">-??????-</option>
                                            <option value="?????????">?????????</option>
                                            <option value="?????????">?????????</option>
                                            <option value="?????????">?????????</option>
                                            <option value="??????">??????</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="input-with-icon">
                                        <label>????????????</label> <select name="trLicenseSet" id="licenseSet">
                                            <option value="X" selected="selected">-??????-</option>
                                            <option value="Y">???</option>
                                            <option value="N">???</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <!-- ???????????? -->

                            <div class="row">

                                <div class="col-sm-12">
                                    <label>?????? ??????</label>
                                    <textarea name="trIntro" id="rtext" cols="15" rows="4"
                                        style="border-style: none; border-radius: 20px;"
                                        placeholder="????????? ????????? ?????????."></textarea>
                                </div>
                            </div>
                            <!-- ???????????? -->
                            <div class="row">
                                <div class="col-sm-6">
                                    <label>???????????? ??????</label> <input type="password" name="trPasswordSet" id="password"
                                        placeholder="????????????" />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <button type="submit" class="btn" id="create_btn"
                                        style="background-color: rgba(166, 208, 205, 0.8); border-style: none;">
                                        <span>create !</span>
                                    </button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5"></div>
                                <input type="reset" value="RESET" style="text-decoration: none;" />
                            </div>



                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

        <!-- <<<<< footer >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-->
        <jsp:include page="tail.jsp" />

        <!-- <<<<< end footer end >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-->


        <!-- <<<<< end footer end >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>-->


        <script src="js/jquery-2.1.4.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/ytplayer.min.js"></script>
        <script src="js/easypiechart.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/lightbox.min.js"></script>
        <script src="js/twitterfetcher.min.js"></script>
        <script src="js/smooth-scroll.min.js"></script>
        <script src="js/scrollreveal.min.js"></script>
        <script src="js/parallax.js"></script>
        <script src="js/scripts.js"></script>

        <script>
            //???????????? ?????? ?????????
            function readImage(input) {
                // ?????? ????????? ????????? ?????? ??????
                if (input.files && input.files[0]) {
                    // ????????? ???????????? ?????? (??????)
                    // FileReader ???????????? ??????
                    const reader = new FileReader()
                    // ???????????? ????????? ??? ??????
                    reader.onload = e => {
                        const previewImage = document.getElementById("preview-image")
                        previewImage.src = e.target.result
                    }
                    // reader??? ????????? ????????? ??????
                    reader.readAsDataURL(input.files[0])
                }
            }

            // input file??? change ????????? ??????
            const inputImage = document.getElementById("input-image")
            inputImage.addEventListener("change", e => {
                readImage(e.target)
            });

            // ???????????? ?????? ????????? ?????? ????????? ??????
            function fnCalCount(type, ths) {
                var $input = $(ths).parents("div").find("input[name='trPersonnelSet']");
                var tCount = Number($input.val());
                var maxNum = 5;
                var minNum = 2;
                
                // +/- ?????? ?????? ??????
                
                // 1) ????????? ????????? (+) ??????
                if (type == 'p') { 
                   
                    if (tCount < maxNum) {
                       
                           $input.val(Number(tCount) + 1);  
                           
                       } else if (tCount >= maxNum) {
                          
                           alert("?????? ????????? ??????" + maxNum + " ?????? ?????? ??? ??? ????????????.");
                       } 
                
                // 2) ????????? ????????? (-) ??????
                } else if (type == 'm') {
                   
                   if (tCount > minNum) {  
                      
                            $input.val(Number(tCount) - 1);
                            
                   } else if (tCount <= minNum) {
                      
                      alert("?????? ????????? ??????" + minNum + " ??? ??????????????? ?????????.");
                      
                   }
                }
 
            }
        </script>

</body>

</html>