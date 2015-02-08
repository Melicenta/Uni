<%-- 
    Document   : ds
    Created on : Aug 24, 2014, 4:57:47 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--window-->
<div  class="window-outer-border ds">

    <div class="headerTitle" onclick="setToCurrent('DSBox');"> Выбор данных
        <span  class="buttonClose"  onclick="closeWin('DSBox');"></span>
        <span  class="buttonResize" onclick="showResize();"></span>
        <span  class="buttonToggle" onclick="hideBox('DSBox');"></span>                       
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border ds">

        <div class="ds-block">

            <div  class="window-inner-ctrl-panel">
                <span class="global-search">
                    <input type="text"><img alt=""  src="img/2.png" >
                </span>
            </div>

                <div class="window-inner-menu"> 
                    <jsp:include page="/gui/dsWinInnerMenu.jsp"/>
                </div>

            <div class="chosenContent panel" >
                <div class="aside-content">

                    <div class="realContent data-selection">	

                    </div>

                </div>
            </div><!--no space here - 
            I haven't got any dark matter to paste together these two divs--><div class="dynamicContent panel">

                <div class="main-content data-selection">


                    <div class="data-table-container">
                      <jsp:include page="/gui/componentsMenu.jsp"/>
                      <div class="table-container-area"></div>
                    </div>

                    <div class="data-graph-container">
                      <jsp:include page="/gui/componentsMenu.jsp"/>
                      <div class="graph-container-area"></div>
                    </div>

                </div>  
            </div>



        </div>                     			


    </div>
</div>
<!--window-->




<script type="text/javascript">
        jQuery(function() {
      
          

//            var containerWidth = jQuery(".window-inner-border").width();
//            var nbpanels = jQuery(".panel").size();
//
//            var padding = 0.5;

            jQuery(".chosenContent").css('width', '30%');
            jQuery(".dynamicContent").css('width', '70%');
//            jQuery(".chosenContent").resizable({maxHeight: 700, minWidth: 255, handles: 'e',
//                resize: function(event, ui) {
//                    var currentWidth = ui.size.width;
//                    // set the content panel width
//                    jQuery(".panel").width(((containerWidth - currentWidth + padding) / (nbpanels - 1)) - ((nbpanels - 1) * padding));
//                    jQuery(this).width(currentWidth);
//                }
//            });

            jQuery('.realContent.data-selection').load('dataSelection/ds-tree.jsp');
            jQuery('.table-container-area').load('workBook/bigData.jsp');
            jQuery('.graph-container-area').load('dataSelection/graphExample.jsp');

        });


          jQuery('.window-outer-border.ds').resizable({
                 alsoResize: ".window-inner-border.ds",
                 minWidth:760
           });
</script>