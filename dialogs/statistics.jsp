<%-- 
    Document   : statistics
    Created on : Oct 8, 2014, 2:05:36 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--window-->
<div  class="window-outer-border-resize-min">

    <div class="headerTitle" onclick="setToCurrent('dialog-message');"> Статистика Хранилища данных
        <span  class="buttonClose"  onclick="closeWin('dialog-message');"></span>                      
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border">

        <div class="window-body-wrap-container">
            <div class="dialog-block">

                <div class="dialog">
                    <jsp:include page="/system/statDB.jsp"/>
                </div>  

            </div>

        </div>
    </div>
</div>
<!--window-->