<%-- 
    Document   : wb_tree_2
    Created on : Aug 24, 2014, 5:25:28 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style type="text/css">
    .tree2 span{
        display:block;
        clear:both;
        float:left;	
    }

    .tree2 a{
        text-decoration:none;
        height: 20px;
        display:block;
        box-shadow: 1px 0px 3px 0px rgba(0, 136, 204, 0.5);
        border-radius: 3px;
        padding:3px;
        margin-top:15px;
        vertical-align:middle;
        text-align:center;
        float: left;
        clear: both;
    }

    .child{
        color: #C0C0C0;
        border-bottom:1px solid rgba(0,136,204,0.3);
        cursor:pointer;

        transition: all 0.5s;
    }

    .child:hover{
        background-color: rgba(0,136,204,0.29);
        color: #808080;
    }

    .parent{
        background-color: rgba(0,136,204,0.4);
        color: #808080;

    }


    .hasChildren{
        box-shadow: -2px 1px 0px 0px rgba(0, 136, 204, 0.08);
        border-radius: 5px 0px 0px 9px;
        margin-left: 10px;
    }

    .root{
        margin-bottom:15px;
        margin-left:5px;
    }

    .isGroup{
        padding-right: 3px;

        transition: all 0.5s;
    }

    .isGroup:hover {
        background-color:rgba(80, 100, 126, 0.02);
    }
</style>
<div class="tree2">

    <span class="root">	
        <a class="parent" href="#">P1</a> 
        <span class="hasChildren isGroup"> 
            <a class="child" href="#">C1</a>
            <span class="hasChildren isGroup">
                <a class="child">CC1</a>
                <span class="hasChildren isGroup">
                    <a class="child">CCC1</a>
                    <a class="child">CCC2</a>
                </span>
            </span> 
            <a class="child" href="#">C2</a>
            <a class="child" href="#">C3</a>

        </span>	                
    </span>

    <span class="root">	
        <a class="parent" href="#">P2</a> 
        <span class="hasChildren isGroup">
            <a class="child">C1</a>
            <a class="child">C2</a>
            <a class="child">C3</a>
            <a class="child">C4</a>
            <span class="hasChildren">
                <a class="child">CC4</a> 
            </span>
        </span>               	                
    </span>


</div>
