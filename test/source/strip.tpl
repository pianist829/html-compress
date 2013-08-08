<!DOCTYPE html>
<html>
<head>{#strip#}


    {#$title="使用当前模块的tip js组建"#}


    {#/strip#}
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>{#$title#}</title>
    {#script#}
        var a = 'a';
        var b = 'b/
                c/
                d';
    {#/script#}
</head>
<body>
{#widget name="common:menu"#}
<h1>{#$title#}</h1>
<fieldset>
    <legend>开发说明</legend>
    <ol>
        <li>利用js框架加载tip组建 ： F.use("tip") <span class="tip">实际tip组件地址：/static/photo/ui/tip/tip.js</span></li>
    </ol>
</fieldset>
<fieldset>
    <legend>效果展示[鼠标：经过图片-放大，离开图片-缩小]</legend>

    <!--这里是使用代码-->
    <img id="img" src="/static/common/ui/files/files.png">
    <!--这里是使用代码-->

</fieldset>
</body>
</html>