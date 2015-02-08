<%-- 
    Document   : iams
    Created on : Aug 24, 2014, 4:57:09 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--window-->
<div  class="window-outer-border iam">

    <div class="headerTitle" onclick="setToCurrent('IAMBox');"> Аналитика
        <span  class="buttonClose"  onclick="closeWin('IAMBox');"></span>
        <span  class="buttonResize" onclick="showResize();"></span>
        <span  class="buttonToggle" onclick="hideBox('IAMBox');"></span>                       
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border iam">

        <div class="iam-block">
            <div  class="window-inner-ctrl-panel">
                <span class="global-search"> <input type="text"><img alt=""  src="img/2.png" ></span>
            </div>

            <div class="window-inner-menu">
                <jsp:include page="/gui/iamWinInnerMenu.jsp"/>
            </div>

            <div class="main-content">
                    <div class="realContent">	
                        <jsp:include page="iams-tree.jsp"/>
                        <jsp:include page="iams-table.jsp"/>
                    </div>
            </div>  



        </div>
    </div>
</div>
<!--window-->
<script type="text/javascript">
   jQuery(function(){
       tableSelectTree();
   }); 
   jQuery('.window-outer-border.iam').resizable({
            alsoResize: ".window-inner-border.iam",
            minWidth:1040
          });
</script>