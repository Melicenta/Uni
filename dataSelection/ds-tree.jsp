<%-- 
    Document   : ds-tree
    Created on : Oct 10, 2014, 5:37:19 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="ds-tree">
    <ul class="ds-tree-parent">
        <li class="ds-tree-child">
            <p>Социальное направление</p>
            <ul class="ds-tree-parent">
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Социально-демографическая сфера</p></li>
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Социально-политическая сфера</p></li>
                <li class="ds-tree-child"><p>Социально-экономическая сфера</p>
                    <ul class="ds-tree-parent">
                        <li class="ds-tree-child"> <a class="ds-tree-check"></a>
                            <p>Потребление товаров и услуг</p></li>
                        <li class="ds-tree-child"> <a class="ds-tree-check"></a>
                            <p>Занятость и безработица</p></li>
                        <li class="ds-tree-child"> <a class="ds-tree-check"></a>
                            <p>Доходы населения</p></li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <ul class="ds-tree-parent">
        <li class="ds-tree-child"><p>Экономическое направление</p>
            <ul class="ds-tree-parent">
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Производственно-экономическая сфера</p>
  
            <ul class="ds-tree-parent">
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Валовый региональный продукт, производство товаров и услуг</p></li>
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Экономические связи, внешнеэкономическая деятельность</p></li>
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Недвижимость</p></li>
            </ul>
        </li>

            </li>
                <li class="ds-tree-child"><a class="ds-tree-check"></a>
                    <p>Финансово-кредитная сфера</p></li>
            </ul>
        </li>
    </ul>

</div>


<script type="text/javascript">
    dsExpandTree();
    dsSelectTree();
</script>