<%-- 
    Document   : wb
    Created on : Aug 24, 2014, 5:12:59 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--window-->
<div  class="window-outer-border wb">

    <div class="headerTitle" onclick="setToCurrent('WBBox');"> Рабочая книга
        <span  class="buttonClose"  onclick="closeWin('WBBox');"></span>                        
        <span  class="buttonResize" onclick="showResize();"></span>
        <span  class="buttonToggle" onclick="hideBox('WBBox');"></span>
        <div   class="hiddenHelper"></div>
    </div>

    <div class="window-inner-border wb">


        <div class="wb-block">
            <div  class="window-inner-ctrl-panel">
                <span class="global-search"> <input type="text"><img alt=""  src="img/2.png" ></span>
            </div>

            <div class="window-inner-menu">
                <jsp:include page="/gui/wbWinInnerMenu.jsp"/>
            </div>

            <div class="main-content work-book">
                
                    <div class="work-book-data-table-container"></div>
                    <div class="work-book-data-graph-container"></div>

            </div>  

        </div>

    </div>
</div>
<!--window-->

<script type="text/javascript">
        jQuery(function() {


            var containerWidth = jQuery(".window-inner-border").width();
            var nbpanels = jQuery(".panel").size();

            var padding = 0.5;

            jQuery(".chosenContent").css('width', '50%');
            jQuery(".dynamicContent").css('width', '50%');
            jQuery(".chosenContent").resizable({maxHeight: 700, minWidth: 255, handles: 'e',
                resize: function(event, ui) {
                    var currentWidth = ui.size.width;
                    // set the content panel width
                    jQuery(".panel").width(((containerWidth - currentWidth + padding) / (nbpanels - 1)) - ((nbpanels - 1) * padding));
                    jQuery(this).width(currentWidth);
                }
            });

            jQuery('.work-book-data-table-container').load('dataSelection/wb_tree.jsp');
            jQuery('.work-book-data-graph-container').load('workBook/bigData.jsp');

        });
    
    jQuery('.window-outer-border.wb').resizable({
           alsoResize: ".window-inner-border.wb",
           minWidth:760
       });
</script>