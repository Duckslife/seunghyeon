<#include "*/header.ftl">
<#include "*/navi.ftl">

<div class="row bottom">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div>
                        <section>
                            <!--banner image-->
                            <img src="/img/project/project-1/desktop-blog.jpg" alt="" class="img-responsive">
                            
                            <!--project title-->
                            <h1>${board.title!'제목이 없습니다.'}</h1>
                            <h1 class="spacer">___</h1>
                            
                            <!--project tags-->
                            <p class="item-tags">
                                <a href="#">illustration</a> ,
                                <a href="#">graphic design</a> ,
                                <a href="#">website</a>
                            </p>
                            
                            <!--project content-->
                            <p class="item-description">${board.content!'본문이 없습니다.'} ${no}</p>
                            

                            <ul class="pager">
                                <#if no &gt; 1>
                                <li class="previous"><a href="/product/${no-1}">&lt; Prev</a></li>
                                <#else>
                                <li class="previous disabled"><a href="#">&lt; Prev</a></li>
                                </#if>
                                <#if no &lt; maxsize>
                                <li class="next"><a href="/product/${no+1}">Next &gt;</a></li>
                                <#else>
                                <li class="next disabled"><a href="#">Next &gt;</a></li>
                                </#if>
                            </ul>
                            
							
                            <hr>
                            
                            <!--share-->
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                                    <h3 class="share">Share</h3>    
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 text-right">
                                    <a href="#"><img class="social" src="/img/icon/icon-mail.png" alt="Mail"></a>
                                    <a href="#"><img class="social" src="/img/icon/icon-facebook.png" alt="Facebook"></a>
                                    <a href="#"><img class="social" src="/img/icon/icon-twitter.png" alt="Twitter"></a>
                                    <a href="#"><img class="social" src="/img/icon/icon-google.png" alt="Google plus"></a>    
                                </div>
                            </div>
                            
                        </section>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                    <div id="scroll-shadow"></div>
                    
                    <h1 class="visible-xs section-header">Last work</h1>
                    <h1 class="visible-xs text-center spacer">___</h1>
                    
                    <!--work choice-->
                    <div class="item-choice">
                        <a href="#" class="filter" data-filter="all">All</a> 
                        <a href="#" class="filter" data-filter="web-design"> Web design</a> 
                        <a href="#" class="filter" data-filter="print"> Print</a> 
                        <a href="#" class="filter" data-filter="illustration">Illustration</a>
                        <hr>
                    </div>
                    
                    <section class="row" id="Grid">
                        <!--work 1-->
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix web-design">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                    
                                        <!--work image-->
                                        <img class="img-responsive item-img" src="/img/work/projet-example-1.png" alt="Work 1">
                                        
                                    </a>
                                </div>
                                <div class="panel-body">
                                
                                    <!--work title-->
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    
                                    <!--work category-->
                                    <p class="item-category">Logotype</p>
                                    
                                    <!--work short description-->
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    
                                    <!--work tags-->
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                    
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-6.jpg" alt="Work 2">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Web design</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix web-design">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-3.png" alt="Work 3">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Illustration</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-4.png" alt="Work 4">
                                    </a>
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Logotype</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-5.png" alt="Work 5">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Logotype</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-9.jpg" alt="Work 6">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Web design</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-7.png" alt="Work 7">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Branding</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-8.png" alt="Work 8">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Poster</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix illustration">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-2.png" alt="Work 9">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Logotype</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-6 mix print">
                            <div class="panel panel-default item">
                                <div class="panel-heading">
                                    <a href="/project-example.html">
                                        <img class="img-responsive item-img" src="/img/work/projet-example-10.png" alt="Work 10">
                                    </a>    
                                </div>
                                <div class="panel-body">
                                    <a href="/project-example.html"><h4 class="item-title">Project Title</h4></a>
                                    <p class="item-category">Logotype</p>
                                    <p class="item-description">Iam virtutem ex consuetudine vitae sermonisque nostri nostri nostri</p>
                                    <hr>
                                    <p class="item-tags">
                                        <a href="#">illustration</a> ,
                                        <a href="#">graphic design</a> ,
                                        <a href="#">website</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </section>
                    <a class="btn btn-block scroll-top visible-xs">
                        <img src="/img/icon/icon-chevron.png" alt="Scroll top">
                    </a>
                </div>
                
  	<#include "*/footer.ftl">