<%-- 
    Document   : db
    Created on : Aug 24, 2014, 4:56:33 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--window-->
<div  class="window-outer-border db">

    <div class="headerTitle" onclick="setToCurrent('DBBox');"> Информационные панели
        <span  class="buttonClose"  onclick="closeWin('DBBox');"></span>
        <span  class="buttonResize" onclick="showResize();"></span>
        <span  class="buttonToggle" onclick="hideBox('DBBox');"></span>                        
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border db">
        <div class="db-block">
            <div  class="window-inner-ctrl-panel">
                <span class="global-search"> <input type="text"><img alt=""  src="img/2.png" ></span>
            </div>

            <div class="window-inner-menu">
                <jsp:include page="/gui/dbWinInnerMenu.jsp"/>
            </div>

            <div class="main-content dashboard">
                <jsp:include page="dashboard-content.jsp"/>                                                                               
            </div>  

        </div>

    </div>
</div>
<!--window-->

<script type="text/javascript">
      jQuery(function() {
            socketMenu();
       });

      jQuery('.window-outer-border.db').resizable({
              alsoResize: ".window-inner-border.db",
              resize: function(){},
              minWidth:760
            });
</script>
