<!DOCTYPE html>
<!--[if IE 8]> <html lang="ko" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="ko" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="ko"> <!--<![endif]-->  
<head>
    <title>${title}</title>

    <#include "*/header.ftl"> 

    
</head>	

<body class="header-fixed">

<div class="wrapper">

    <!--=== Header v5 ===-->  
    <#include "*/navi.ftl">
    <!--=== Header v5 ===--> 
    
 	<div class="container-fluid content">
            <!-- Begin Content -->
            <div class="row">
            <div class="col-md-12">
                <!-- Order Form -->
                <form action="assets/php/demo-order.php" method="post" enctype="multipart/form-data" id="sky-form1" class="sky-form">
                      <header><h3>리뷰작성</h3></header>

                    <fieldset>
                        <div class="row">
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-user"></i>
                                    <input type="text" name="name" placeholder="Name">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-briefcase"></i>
                                    <input type="text" name="company" placeholder="Company">
                                </label>
                            </section>
                        </div>

                        <div class="row">
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-envelope"></i>
                                    <input type="email" name="email" placeholder="E-mail">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-phone"></i>
                                    <input type="tel" name="phone" placeholder="Phone">
                                </label>
                            </section>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row">
                            <section class="col col-6">
                                <label class="select">
                                    <select name="interested">
                                        <option value="none" selected disabled>Interested in</option>
                                        <option value="design">design</option>
                                        <option value="development">development</option>
                                        <option value="illustration">illustration</option>
                                        <option value="branding">branding</option>
                                        <option value="video">video</option>
                                    </select>
                                    <i></i>
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="select">
                                    <select name="budget">
                                        <option value="0" selected disabled>Budget</option>
                                        <option value="less than 5000$">less than 5000$</option>
                                        <option value="5000$ - 10000$">5000$ - 10000$</option>
                                        <option value="10000$ - 20000$">10000$ - 20000$</option>
                                        <option value="more than 20000$">more than 20000$</option>
                                    </select>
                                    <i></i>
                                </label>
                            </section>
                        </div>

                        <div class="row">
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-calendar"></i>
                                    <input type="text" name="start" id="start" placeholder="Expected start date">
                                </label>
                            </section>
                            <section class="col col-6">
                                <label class="input">
                                    <i class="icon-append fa fa-calendar"></i>
                                    <input type="text" name="finish" id="finish" placeholder="Expected finish date">
                                </label>
                            </section>
                        </div>

                        <section>
                            <label for="file" class="input input-file">
                                <div class="button"><input type="file" name="file" multiple onchange="this.parentNode.nextSibling.value = this.value">Browse</div><input type="text" placeholder="Include some file" readonly>
                            </label>
                        </section>
                </fieldset>
                
				<fieldset>
                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-user"></i>
                                <input type="text" name="name" id="name" placeholder="Your name">
                            </label>
                        </section>

                        <section>
                            <label class="input">
                                <i class="icon-append fa fa-envelope"></i>
                                <input type="email" name="email" id="email" placeholder="Your e-mail">
                            </label>
                        </section>
					<div class="row">
                        <section>
                            <label class="label"></label>
                            <label class="textarea">
                                
							    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>								
                                <textarea rows="20" name="review" id="review" placeholder="Text of the review"></textarea>
                                <script>
                                	CKEDITOR.replace('review');
                                </script>
								
								
                            </label>
                        </section>
					</div>

                        <section>
                            <div class="rating">
                                <input type="radio" name="quality" id="quality-5">
                                <label for="quality-5"><i class="fa fa-star"></i></label>
                                <input type="radio" name="quality" id="quality-4">
                                <label for="quality-4"><i class="fa fa-star"></i></label>
                                <input type="radio" name="quality" id="quality-3">
                                <label for="quality-3"><i class="fa fa-star"></i></label>
                                <input type="radio" name="quality" id="quality-2">
                                <label for="quality-2"><i class="fa fa-star"></i></label>
                                <input type="radio" name="quality" id="quality-1">
                                <label for="quality-1"><i class="fa fa-star"></i></label>
                                Quality of the product
                            </div>

                            <div class="rating">
                                <input type="radio" name="reliability" id="reliability-5">
                                <label for="reliability-5"><i class="fa fa-star"></i></label>
                                <input type="radio" name="reliability" id="reliability-4">
                                <label for="reliability-4"><i class="fa fa-star"></i></label>
                                <input type="radio" name="reliability" id="reliability-3">
                                <label for="reliability-3"><i class="fa fa-star"></i></label>
                                <input type="radio" name="reliability" id="reliability-2">
                                <label for="reliability-2"><i class="fa fa-star"></i></label>
                                <input type="radio" name="reliability" id="reliability-1">
                                <label for="reliability-1"><i class="fa fa-star"></i></label>
                                Reliability of the product
                            </div>

                            <div class="rating">
                                <input type="radio" name="overall" id="overall-5">
                                <label for="overall-5"><i class="fa fa-star"></i></label>
                                <input type="radio" name="overall" id="overall-4">
                                <label for="overall-4"><i class="fa fa-star"></i></label>
                                <input type="radio" name="overall" id="overall-3">
                                <label for="overall-3"><i class="fa fa-star"></i></label>
                                <input type="radio" name="overall" id="overall-2">
                                <label for="overall-2"><i class="fa fa-star"></i></label>
                                <input type="radio" name="overall" id="overall-1">
                                <label for="overall-1"><i class="fa fa-star"></i></label>
                                Overall rating
                            </div>
                        </section>
                    </fieldset>
                    <footer>
                        <button type="submit" class="btn-u">Submit a review</button>
                    </footer>
                </form>
                <!-- End Review Form-->
            </div>
            <!-- End Content -->
            </div>
        </div>
    <!--=== End Content Part ===-->
</div>

    
    <#include "*/footer.ftl">

     
</div><!--/wrapper-->

</body>
</html> 