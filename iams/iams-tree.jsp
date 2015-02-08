<%-- 
    Document   : iams-tree
    Created on : Oct 8, 2014, 5:18:13 PM
    Author     : denezhnaya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="iam-tree">
    <ul class="iam-tree-parent" id="iam-tree-1">
        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-1');"></a> <p>Информационно-аналитические материалы</p>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Социально-демографическая сфера</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Социально-политическая сфера</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Социально-экономическая сфера</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Производственно-экономическая сфера</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Финансово-кредитная сфера</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Среда обитания</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Сфера безопасности</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Духовно-нравственная сфера</p>
        </li>
    </ul>

    <ul class="iam-tree-parent" id="iam-tree-2">
        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-2');"></a> <p>Социологические данные</p>

        <li class="iam-tree-child">

            <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-2-1');"></a> <p>Основной контракт</p>            
            <ul class="iam-tree-parent level1" id="iam-tree-2-1">
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Репрезентативные опросы населения Санкт-Петербурга (1200 чел.)</p>
                </li>
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Репрезентативные опросы населения районов (600 чел.)</p>
                </li>
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Целевые опросы</p>
                </li>
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Фокус-группы</p>
                </li>
            </ul>

        </li>
        <li class="iam-tree-child">

            <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-2-2');"></a> <p>Прочие контракты</p>
            <ul class="iam-tree-parent level1" id="iam-tree-2-2">
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Репрезентативные опросы населения Санкт-Петербурга</p>
                </li>
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Целевые опросы</p>
                </li>
                <li class="iam-tree-child">
                    <a class="iam-tree-check"></a> <p>Экспертные опросы</p>
                </li>
            </ul>

        </li>
    </ul>

    <ul class="iam-tree-parent" id="iam-tree-3">

        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-3');"></a> <p>Нормативно-правовые документы</p>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Закон</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Постановление</p>
        </li>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Распоряжение</p>
        </li>
    </ul>

    <ul class="iam-tree-parent" id="iam-tree-4">
        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-4');"></a> <p>Прочие документы</p>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Оценка эффективности деятельности</p>
        </li>
    </ul>

    <ul class="iam-tree-parent" id="iam-tree-5">
        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-5');"></a> <p>Основной контракт</p>
        <li class="iam-tree-child">
            <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-5-1');"></a> <p>Репрезентативные опросы населения Санкт-Петербурга</p>
            <ul class="iam-tree-parent level1" id="iam-tree-5-1">
                <li class="iam-tree-child">

                    <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-5-1-1');"></a> <p>2004</p>
                    <ul class="iam-tree-parent level2" id="iam-tree-5-1-1">
                        <li class="iam-tree-child">
                            <a class="iam-tree-check"></a> <p>июль (6-9)</p>
                        </li>
                        <li class="iam-tree-child">
                            <a class="iam-tree-check"></a> <p>октябрь (29) - ноябрь (1)</p>
                        </li>
                    </ul>

                    <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-5-1-2');"></a> <p>2005</p>
                    <ul class="iam-tree-parent level2" id="iam-tree-5-1-2">
                        <li class="iam-tree-child">
                            <a class="iam-tree-check"></a> <p>апрель (15-18)</p>
                        </li>
                        <li class="iam-tree-child">
                            <a class="iam-tree-check"></a> <p>июль (11-14)</p>
                        </li>
                        <li class="iam-tree-child">
                            <a class="iam-tree-check"></a> <p>октябрь (24-28)</p>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>

    <ul class="iam-tree-parent" id="iam-tree-6">
        <a class="iam-tree-expand-level" onclick="tableExpandTree('iam-tree-6');"></a> <p>Прочие контракты</p>
        <li class="iam-tree-child">
            <a class="iam-tree-check"></a> <p>Целевые опросы</p>
        </li>
    </ul>


</div>