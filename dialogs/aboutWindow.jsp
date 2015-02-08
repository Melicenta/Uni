<%-- 
    Document   : aboutWindow
    Created on : Sep 30, 2014, 1:00:22 PM
    Author     : denezhnaya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!--window-->
<div  class="window-outer-border-resize-min">

    <div class="headerTitle" onclick="setToCurrent('dialog-message');"> Описание версии
        <span  class="buttonClose"  onclick="closeWin('dialog-message');"></span>                      
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border">

        <div class="window-body-wrap-container">
            <div class="dialog-block">

                <div class="dialog">
                   <p> Проект:   Uniweb Analytics Demo</p>
                   <p>Описание: Демонстрационная версия Uniweb Analytics 4.0 </p>
                   <p>&copy; 2014 СПБ ГУП "Санкт-Петербургский информационно-аналитический центр".
                        191040, Россия, Санкт-Петербург, ул. Черняховского, 59.
                        Все права защищены.</p>
                </div>  

            </div>

        </div>
    </div>
</div>
<!--window-->