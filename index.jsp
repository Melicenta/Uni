<%-- 
    Document   : index
    Created on : Aug 24, 2014, 3:33:32 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <!--<link rel="stylesheet" href="css/window.css" type="text/css">
        <link rel="stylesheet" href="css/main.css" type="text/css">
        <link rel="stylesheet" href="css/menu.css" type="text/css">-->
        <link rel="stylesheet" href="js/jquery-ui-1.10.4.custom/css/no-theme/jquery-ui-1.10.4.custom.css" type="text/css">
        <link rel="stylesheet" href="css/buttons.css" type="text/css">
        <link rel="stylesheet" href="css/dashboards.css" type="text/css">
        <link rel="stylesheet" href="css/forms.css" type="text/css">
        <link rel="stylesheet" href="css/smartMenu.css" type="text/css">
        <link rel="stylesheet" href="css/layouts.css" type="text/css">
        <link rel="stylesheet" href="css/uniWindows.css" type="text/css">
        <link rel="stylesheet" href="css/tree.css" type="text/css">
        <link rel="stylesheet" href="css/analyticsTree.css" type="text/css">
        <link rel="stylesheet" href="css/ds-tree.css" type="text/css">
        <link rel="stylesheet" href="css/scheme.css" type="text/css">
        <!--        <link rel="stylesheet" href="css/hierEdit.css" type="text/css">-->
        <script type="text/javascript" src="js/jquery-ui-1.10.4.custom/js/jquery-1.10.2.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.10.4.custom/js/jquery-ui-1.10.4.custom.js"></script>
        <script type="text/javascript" src="js/highcharts.js"></script>
        <script type="text/javascript" src="js/exporting.js"></script>
        <script type="text/javascript" src="js/load.js"></script>
        <!--        <script type="text/javascript" src="js/hierEdit.js"></script>
                <script type="text/javascript" src="js/hierTreeBuilder.js"></script>-->
    </head>

    <body>

        <div id="wrap" class="background-default">
            <div id="header" class="desk-header-area">
                <p> © 2007-2014 СПб ГУП "СПб ИАЦ" "UniWeb Analytics" версия 4.0-demo  </p>
                <span class="startButton" onclick="openDesktopMenu();"><img alt="" src="img/menu-logo.png"/></span>
            </div>

            <div class="contAt">

                <section >
                    <article class="desk-icon-area">

                        <div class="icon" onclick="loadWindows('landingBox');"><img alt="" src="img/landing.png">Главная</div>
                        <div class="icon" onclick="loadWindows('DSBox');"><img alt="" src="img/data-selection.png">Выбор данных</div>
                        <div class="icon" onclick="loadWindows('WBBox');"><img alt="" src="img/work-book.png">Рабочая книга</div>
                        <div class="icon" onclick="loadWindows('IAMBox');"><img alt="" src="img/iams.png">Аналитика</div>
                        <div class="icon" onclick="loadWindows('DBBox');"><img alt="" src="img/dashboards.png">Инфопанели</div>

                    </article>

                    <article class="widget-area">

                        <div class="window-container landingBox"></div>
                        <div class="window-container DSBox"></div>
                        <div class="window-container WBBox"></div>
                        <div class="window-container IAMBox"></div>
                        <div class="window-container DBBox"></div>
                        <div class="window-container dialog-message wallpaper"></div>
                        <div class="window-container dialog-message about"></div>
                        <div class="window-container dialog-message statistics"></div>
                        <div class="window-container dialog-message widget-window"></div>
                        
                    </article>   

                    <article class="deskMenu-area">

                        <div class="smart-menu-panel desk-icons-panel">
                            <!--                            class="desk-icons-panel">-->
                            <span class="menu-item-enabled" onclick="openSystemStatisticsDialog();"> Статистика хранилища данных</span>
                            <span > Новости Системы</span>
                            <span > Руководство пользователя</span>
                            <span > Настройки Системы</span>
                        </div>
                        <div class="smart-menu-panel">
                            <span class="menu-item-enabled" onclick="openChangeWallpaperDialog();"> Сменить оформление</span>
                            <span class="menu-item-enabled" onclick="openVersionDescriptionDialog();"> Описание версии</span>
                            <span>Logout</span>
                        </div>

                    </article>

                </section>

            </div>
            <div id="padding"></div>
            
        </div>



        <div id="footer"></div>
        <script type="text/javascript">

             jQuery(function() {
                 jQuery('.desk-icon-area').resizable({minWidth:115,
                     grid: [1, 10000]
                 });
             jQuery('.window-container').draggable({handle: ".headerTitle"});
//             jQuery('.icon').draggable({  containment:"parent" ,handles: 'e'
////                     start: function(){ jQuery('.desk-icon-area').off('mouseup','a');},
////                     stop: function(){ jQuery('.desk-icon-area').on('mouseup','a');}
//                 });
                 
          });
          
//                   jQuery('.desk-icon-area').on('click', 'a',function() {
//                         var windowContainer = jQuery(this).attr('class');
//                         //windowContainer = windowContainer - jQuery('.icon') - jQuery('.ui-draggable');
//                         loadWindows(windowContainer);
//                         //jQuery(this).addClass('icon ui-draggable');
//                               });
        </script>
    </body>

</html>