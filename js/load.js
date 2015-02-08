//use this file to add content in main page of the application

   //var iconContainer = jQuery('.desk-icon-area');
   //var icon = jQuery('.icon');
//function openMode() {
//    var link = jQuery(this).text();
//    alert(link);
//}
 
function loadWindows(windowContainer) {

   // jQuery('.widget-area').children().removeClass('currentBox');
    var container = jQuery('.' + windowContainer);
    var hiddenCont = jQuery('#footer');
    //  alert(container);
    switch (windowContainer) {

        case 'landingBox':
            container.load('welcome/landing.jsp');
            container.addClass('currentBox');
            hiddenCont.append('<span class="toggledItem toggledItem_'+windowContainer+'">' + '<img alt="" src="img/desk-menu/landing.png">' + '</span>');
            break

        case 'DSBox':
            container.load('dataSelection/ds.jsp');
            container.addClass('currentBox');
            hiddenCont.append('<span class="toggledItem toggledItem_'+windowContainer+'">' + '<img alt="" src="img/desk-menu/data-selection.png">' + '</span>');
            break


        case 'WBBox':
            container.load('workBook/wb.jsp');
            container.addClass('currentBox');
            hiddenCont.append('<span class="toggledItem toggledItem_'+windowContainer+'">' + '<img alt="" src="img/desk-menu/work-book.png">' + '</span>');
            break


        case 'IAMBox':
            container.load('iams/iams.jsp');
            container.addClass('currentBox');
            hiddenCont.append('<span class="toggledItem toggledItem_'+windowContainer+'">' + '<img alt="" src="img/desk-menu/iams.png">' + '</span>');
            break


        case 'DBBox':
            container.load('dashboards/db.jsp');
            container.addClass('currentBox');
            hiddenCont.append('<span class="toggledItem toggledItem_'+windowContainer+'">' + '<img alt="" src="img/desk-menu/dashboards.png">' + '</span>');
            break
    }
    
    showBox(windowContainer);
}


function setToCurrent(windowContainer) {
    //window-container landingBox
    jQuery('.widget-area').children().removeClass('currentBox');
    jQuery('.' + windowContainer).addClass('currentBox');

}

function showResize(){
    jQuery('.window-outer-border').toggleClass('fullScreen');
}

function openDesktopMenu() {
    jQuery('.deskMenu-area').toggle();
    var firstClick = true;
    jQuery(document).bind('click.myEvent', function(e) {
        if (!firstClick && jQuery(e.target).closest('.deskMenu-area').length === 0) {
            jQuery('.deskMenu-area').hide();
            jQuery(document).unbind('click.myEvent');
        }
        firstClick = false;
    });
}

function openChangeWallpaperDialog(){
    jQuery('.dialog-message.wallpaper').load('dialogs/setWallpaper.jsp');
    jQuery('.deskMenu-area').hide();
}

function openVersionDescriptionDialog(){
    jQuery('.dialog-message.about').load('dialogs/aboutWindow.jsp');
    jQuery('.deskMenu-area').hide();
}

function openSystemStatisticsDialog(){
    jQuery('.dialog-message.statistics').load('dialogs/statistics.jsp');
    jQuery('.deskMenu-area').hide();
}

function changeWallpaper(className) {
    var cl = '' + className;
    jQuery('#wrap').removeClass().addClass(cl);
}

function hideBox(windowContainer) {
    jQuery('.' + windowContainer).css('display', 'none');
    jQuery('.toggledItem_'+windowContainer).addClass('hidden');

}

function showBox(windowContainer) {
    jQuery('.toggledItem_' + windowContainer).click(function(){
            jQuery('.' + windowContainer).css('display', 'block');
    jQuery('.toggledItem_' + windowContainer).removeClass('hidden');
    });

}

function openTab(id) {
    jQuery('.main-tab-container li').removeClass('chosen-tab');
    var tabName = jQuery('#' + id);
    jQuery.ajax({
        url: 'welcome/' + id + '.jsp'
    }).done(function(html) {
        jQuery("#currentTabContainer").html(html);
        tabName.addClass('chosen-tab');
    });
}


function closeWin(windowContainer) {
    var container = jQuery('.' + windowContainer);
    jQuery('.toggledItem_' + windowContainer).detach();
    jQuery(container).removeClass('currentBox');
    container.empty();
}


function socketMenu() {
    var container = jQuery('.socket-menu-container');
    container.click(function() {
        jQuery(this).children('.socket-menu-button').toggleClass('menu-button-pushed');
        jQuery(this).children('.socket-menu-panel').toggle();
    });

}
//iams tree
function tableExpandTree(id) {
    var toggledGroup = jQuery('#' + id + ' ' + '.iam-tree-child');
    var styleOfGroup = jQuery(toggledGroup).css('display');
    var thisLink = jQuery('#' + id + ' ' + 'a');
    if (styleOfGroup === 'none') {
        jQuery(toggledGroup).css('display', 'block');
        if (jQuery(thisLink).hasClass('iam-tree-expand-level')) {
            jQuery(thisLink).removeClass('iam-tree-expand-level')
                            .addClass('iam-tree-close-level');
        }
        else if (jQuery(thisLink).hasClass('iam-tree-close-level')) {
                jQuery(thisLink).removeClass('iam-tree-close-level')
                                .addClass('iam-tree-expand-level');
            }
        
    }
    if (styleOfGroup === 'block') {
        jQuery(toggledGroup).css('display', 'none');
        if (jQuery(thisLink).hasClass('iam-tree-close-level')) {
            jQuery(thisLink).removeClass('iam-tree-close-level')
                            .addClass('iam-tree-expand-level');
        }
        else if (jQuery(thisLink).hasClass('iam-tree-expand-level')) {
                jQuery(thisLink).removeClass('iam-tree-expand-level')
                                .addClass('iam-tree-close-level');
            }
        
    }
}

function tableSelectTree(){
    jQuery('.iam-tree-check').on('click',this,
        function(){
        if (jQuery(this).hasClass('iam-tree-check')){        
              jQuery(this).removeClass('iam-tree-check').addClass('iam-tree-checked');        
    }
    else if (jQuery(this).hasClass('iam-tree-checked')){        
               jQuery(this).removeClass('iam-tree-checked').addClass('iam-tree-check');      
    }  
        });
 

}

//iams tree

function dsExpandTree() {
    jQuery('.ds-tree-child').on('click', 'p',
            function() {
                jQuery(this).next('.ds-tree-parent').toggle();
            });
}

function dsSelectTree(){
    jQuery('.ds-tree-check').on('click',this,
        function(){
        if (jQuery(this).hasClass('ds-tree-check')){        
              jQuery(this).removeClass('ds-tree-check').addClass('ds-tree-checked');        
    }
    else if (jQuery(this).hasClass('ds-tree-checked')){        
               jQuery(this).removeClass('ds-tree-checked').addClass('ds-tree-check');      
    }  
        });
 

}

function showWidgetBox() {
    var target = jQuery('.dialog-message.widget-window');
    //var selector = jQuery('.component-menu-area');
   
    if (jQuery('.data-table-container').hasClass('component-menu-area')) {
        jQuery(target).load('gui/window.jsp').html('workBook/bigData.jsp');
    }
//    if (jQuery('.data-graph-container').hasClass('.component-menu-area')) {
//        jQuery(target).load('gui/window.jsp').html('dataSelection/graphExample.jsp');
//    }
}