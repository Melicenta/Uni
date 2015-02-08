<%-- 
    Document   : landingContent
    Created on : Aug 24, 2014, 4:18:32 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<article id="mainTabs" class="mainArticleLeft">
    <!--left section with picture-->
    <div style="width: 200px;
         float: left;
         display: inline-block;">
        <img src="img/s_pb.png">
    </div>
    <!--left section with picture-->        

    <!--right section with tabs-->
    <div class="rightCurrent">

        <ul class="main-tab-container">

            <li id="about" class="chosen-tab">
                <a onclick="openTab('about');"> О системе </a> 
            </li>

            <!--   -->
            <li id="glossary">           
                <a onclick="openTab('glossary');">  Содержание системы </a>
            </li>

        </ul>

        <div class="aboutSubSystemItem" id="currentTabContainerView">

            <div id="currentTabContainer" style="float:left; display: block; height: 500px;">
                <jsp:include page="about.jsp"/>
            </div>

        </div>


    </div>
    <!--right section with tabs-->    

    <div id="mainFooter" class="mainFooter">
        <jsp:include page="main-footer.jsp"/>
    </div>

</article>
