<%-- 
    Document   : landing
    Created on : Aug 24, 2014, 4:19:57 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!--window-->
<div  class="window-outer-border ld">

    <div class="headerTitle" onclick="setToCurrent('landingBox');"> Главная
        <span  class="buttonClose"  onclick="closeWin('landingBox');"></span>
<!--        <span  class="buttonResize" onclick="showResizeMenu();"></span>-->
        <span  class="buttonToggle" onclick="hideBox('landingBox');"></span>                       
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border ld">
            <div class="landing-block">
                <div class="main-content landing">
                    <jsp:include page="landingContent.jsp"/>                                                                                     
                </div>  

            </div>

        </div>
</div>
<!--window-->

<script type="text/javascript">
jQuery('.window-outer-border.ld').resizable({
      alsoResize: ".window-inner-border.ld",
      minWidth:760
    });
</script>