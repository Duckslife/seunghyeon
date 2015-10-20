    <body class="page-index">
        <div class="container" id="container">
        
            <div class="row top">
                <div class="col-lg-8 col-md-8 col-sm-7 col-left">
                    <div class="name"><a href="index.html">SeungHyeon</a></div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-5 col-right">
                    <nav>
                        <ul class="list-inline" id="menu">
                            <#if menu == "index" >
                            <li class="active" >
							<#elseif menu == "product">
                            <li class="active" >
                            <#elseif menu =="project-example">
                            <li class="active" >
                            <#else> <li> </#if>
                                <a href="/product">Product</a>
                            </li>
                           <#if menu == "blog"><li class="active" ><#else> <li> </#if>
                                <a href="/blog.html">blog</a>
                            </li>
                            <#if menu == "contact"><li class="active" ><#else> <li> </#if>
                                <a href="/contact.html">contact</a>
                            </li>
                            <li class="last">
                                <a href="#"><img class="social" src="/img/icon/icon-facebook.png" alt="facebook"></a>
                                <a href="#"><img class="social" src="/img/icon/icon-twitter.png" alt="twitter"></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            
            
            
    