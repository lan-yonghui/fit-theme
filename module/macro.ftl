<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />  

        <@global.head />

        <script type="text/javascript" charset="utf-8" src="/themes/fit-theme/source/js/jquery.min.js"></script>

        <#--  fit2cloud官网  -->
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit2cloud.min.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit2cloud-index.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit2cloud-style.css" />
        <#--  fit2cloud官网  -->
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit-onetrust.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit-header.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit-footer.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit-articles.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/styles.css" />
        
        <link rel="stylesheet" href="/themes/fit-theme/source/css/fit-search.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/CoveoFullSearch.css" />
        <link rel="stylesheet" href="/themes/fit-theme/source/css/app.css">
            
        <title>${title}</title>
    </head>
    <body class="null comm-page-home">
        <div id="page-container" class="cKM_PortalTheme">
            <#include "menu.ftl">

            <#nested >

            <#--
                公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
                包含：统计代码，底部信息
            -->

            <#include "footer.ftl">

            <@global.footer />
        </div>
    </body>
</html>
</#macro>

