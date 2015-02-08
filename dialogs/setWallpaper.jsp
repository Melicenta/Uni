<%-- 
    Document   : setWallpaper
    Created on : Sep 30, 2014, 10:57:20 AM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!--window-->
<div  class="window-outer-border-resize-min">

    <div class="headerTitle" onclick="setToCurrent('dialog-message');"> Оформление рабочей области
        <span  class="buttonClose"  onclick="closeWin('dialog-message');"></span>                      
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border">

        <div class="window-body-wrap-container">
            <div class="dialog-block">

                <div class="dialog">
                    <a onclick="changeWallpaper('background-default');">
                           <img alt="" src="img/default-preview.png">
                        </a>
                    <a onclick="changeWallpaper('background-vers1');">
                           <img alt="" src="img/vers1-preview.png">
                        </a>
                    <a onclick="changeWallpaper('background-vers2');">
                           <img alt="" src="img/vers2-preview.png">
                        </a>  
                    <a onclick="changeWallpaper('background-vers3');">
                           <img alt="" src="img/vers3-preview.png">
                        </a> 
                    <a onclick="changeWallpaper('background-vers4');">
                           <img alt="" src="img/vers4-preview.png">
                        </a>  
                </div>  

            </div>

        </div>
    </div>
</div>
<!--window-->