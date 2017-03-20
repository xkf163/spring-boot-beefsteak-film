<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FILM</title>
    <link rel="stylesheet" type="text/css" href="/components/jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/components/jquery-easyui-1.5.1/themes/icon.css">
    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
    <div id="toolbar" style="padding: 2px">
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-add">新增</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-edit">编辑</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-remove">移除</a>
        <a href="#" onclick="save()" class="easyui-linkbutton" plain="true" iconCls="icon-save">保存</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-cancel">删除</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-reload">刷新</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-search">查询</a>
        <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">打印</a>
    </div>
    <div style="margin: 20px">
        <form id="ff" method="post">
            <div style="display: none">
                <input class="easyui-textbox" name="fid" data-options="label:'fid:'">
            </div>

            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="name" style="width:40%" data-options="label:'中片名:',required:true">
                <input class="easyui-textbox" name="nameEng" style="width:40%" data-options="label:'外片名:'">
            </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="nameAll" style="width:80%" data-options="label:'所有片名:'">
            </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="year" style="width:40%" data-options="label:'年代:',required:true">
            <input class="easyui-textbox" name="certificate" style="width:40%" data-options="label:'分级:'">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="country" style="width:40%" data-options="label:'国家/地区:'">
            <input class="easyui-textbox" name="language" style="width:40%" data-options="label:'语言:'">
        </div>
            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="genre" style="width:80%" data-options="label:'类型:'">
            </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="imdb" style="width:40%" data-options="label:'IMDB编号:'">
            <input class="easyui-textbox" name="rating" style="width:40%" data-options="label:'IMDB评分:'">
        </div>


            <div style="margin-bottom:20px">
                <input class="easyui-textbox" name="storyline" style="width:80%;height:120px" data-options="label:'剧情:',multiline:true">
            </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="titbit" style="width:80%;height:60px" data-options="label:'花絮:',multiline:true">
        </div>

        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="awards" style="width:80%;height:60px" data-options="label:'获奖记录:',multiline:true">
        </div>
        <div style="margin-bottom:20px">
            <input class="easyui-textbox" name="memo" style="width:80%;height:60px" data-options="label:'幕后制作:',multiline:true">
        </div>

        </form>
    </div>

<script>
    $(function () {
            $('#ff').form('load', '/film/'+${fid});
    });

    function save() {
        $('#ff').form('submit', {
            url:"/film/save/"+${fid},
            success:function(data){
//                alert(data)
                $.messager.show({
                    title: '提示',
                    msg: "保存成功！"
                });
            }
    });

    }
</script>

</body>
</html>