<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Custom Collapse Title in Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="/components/jquery-easyui-1.5.1/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="/components/jquery-easyui-1.5.1/themes/icon.css">

    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
    <script type="text/javascript" src="/components/jquery-easyui-1.5.1/locale/easyui-lang-zh_CN.js"></script>



    <style type="text/css">
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            color:#666;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>

</head>
<body class="easyui-layout">
    <div data-options="region:'north'" style="height:100px;overflow-y: hidden;background-color: #E0ECFF;font-size: 14px;padding: 10px">
        <a class="easyui-linkbutton" data-options="iconCls:'icon-large-picture',size:'large',plain:'true'"></a>
        jQuery EasyUI framework helps you build your web pages easily.
        <div id="login" style="position:absolute;right: 5px;top: 5px;">
            <span style="font-size: 12px;">欢迎您！</span> <a href="#" class="easyui-menubutton" menu="#login1" iconCls="icon-man">Tiago</a>
        </div>
        <div id="login1" style="width:150px;">
            <div iconCls="icon-undo">Undo</div>
            <div iconCls="icon-redo">Redo</div>
            <div class="menu-sep"></div>
            <div>Cut</div>
            <div>Copy</div>
            <div>Paste</div>
            <div class="menu-sep"></div>
            <div iconCls="icon-remove">注销</div>
            <div>退出</div>
        </div>
    </div>
    <!--<div data-options="region:'east',split:true,hideCollapsedContent:false" title="East" style="width:150px;"></div>-->
    <div title="数据库" region="west" split="true" style="width:200px;" >
        <div class="easyui-accordion" style="height: 100%;border: 0px">
            <div title="目录" data-options="iconCls:'icon-ok'" style="padding:10px;">
                <ul class="easyui-tree" data-options="animate:'true',lines:'true'">
                    <li>
                        <span>年代</span>
                        <ul>
                            <li><span>File 11</span></li>
                            <li><span>File 12</span></li>
                            <li><span>File 13</span></li>
                            <li><span>File 2</span></li>
                            <li><span>File 3</span></li>
                        </ul>
                    </li>
                    <li data-options="state:'closed'">
                        <span>评分</span>
                        <ul>
                            <li><span>File 11</span></li>
                            <li><span>File 12</span></li>
                            <li><span>File 13</span></li>
                            <li><span>File 2</span></li>
                            <li><span>File 3</span></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div title="管理员" data-options="iconCls:'icon-help'" style="padding:10px;">
                <ul class="easyui-tree" data-options="animate:'true',lines:'true'">
                    <li><span>导航树</span></li>
                    <li><span>File 3</span></li>
                    <li><span>File21</span></li>
                </ul>
            </div>
        </div>

    </div>

    <div  data-options="region:'center'">
        <table id="dg">
            <thead>
            <tr>
                <th field="ck" checkbox="true"></th>
                <th data-options="field:'name',sortable:true,width:80">片名</th>
                <th data-options="field:'year',width:20">年代</th>
                <th data-options="field:'price',width:60,align:'right'">类型</th>
                <th data-options="field:'price1',width:30">国家/地区</th>
                <th data-options="field:'price2',width:20">评分</th>
                <th data-options="field:'price3',width:60">导演</th>
                <th data-options="field:'price4',width:20">磁盘空间</th>
                <th data-options="field:'price34'">更新时间</th>
            </tr>
            </thead>
        </table>

        <!--
        <table id="dg" class="easyui-datagrid"
               data-options="toolbar:toolbar,pagination:'true',rownumbers:'true',striped:'true',border:false,singleSelect:false,
               SelectOnCheck:true,CheckOnSelect:true,fit:true,fitColumns:true">
            <thead>
            <tr>
                <th field="ck" checkbox="true"></th>
                <th data-options="field:'name',sortable:true,width:80">片名</th>
                <th data-options="field:'year',width:20">年代</th>
                <th data-options="field:'price',width:60,align:'right'">类型</th>
                <th data-options="field:'price1',width:30">国家/地区</th>
                <th data-options="field:'price2',width:20">评分</th>
                <th data-options="field:'price3',width:60">导演</th>
                <th data-options="field:'price4',width:20">磁盘空间</th>
                <th data-options="field:'price34'">更新时间</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        -->
        <div id="toolbar"  style="background:#E0ECFF;width:100%;">
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-add">新增</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-edit">编辑</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-remove">移除</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-save">保存</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-cancel">删除</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-reload">刷新</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-search">查询</a>
            <a href="#" class="easyui-linkbutton" plain="true" iconCls="icon-print">打印</a>
        </div>

        <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
             closed="true" buttons="#dlg-buttons">
            <div class="ftitle">User Information</div>
            <form id="fm" method="post" novalidate>
                <div class="fitem">
                    <label>First Name:</label>
                    <input name="firstname" class="easyui-validatebox" required="true">
                </div>
                <div class="fitem">
                    <label>Last Name:</label>
                    <input name="lastname" class="easyui-validatebox" required="true">
                </div>
                <div class="fitem">
                    <label>Phone:</label>
                    <input name="phone">
                </div>
                <div class="fitem">
                    <label>Email:</label>
                    <input name="email" class="easyui-validatebox" validType="email">
                </div>
            </form>
        </div>
        <div id="dlg-buttons">
            <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
            <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
        </div>
    </div>


    <div region="south" border="false" style="height: 20px;line-height:20px;background-color: #E0ECFF;padding-left: 20px;">欢迎您</div>
    <script type="text/javascript">
        $(function () {

            $('#dg').datagrid({
                toolbar:'#toolbar',
                url:'/fs',
//                columns:[[
//                    {field:'year',title:'年代',width:100},
//                    {field:'name',title:'Name',width:100},
//                    {field:'price',title:'Price',width:100,align:'right'}
//                ]],
                rownumbers:true,
                singleSelect:false,
                selectOnCheck:true,
                checkOnSelect:true,
                autoRowHeight:true,
                fit:true,
                fitColumns:true,
                pagination:{
                    pageSize: 10, //每页显示的记录条数，默认为10
                    pageList: [10, 15, 20, 25], //可以设置每页记录条数的列表
                    loading: true,
                },
                loadFilter:function(data){
                    return data.content;
                }
            });


//            $('#dg').datagrid('getPager').pagination({
//                pageSize: 10, //每页显示的记录条数，默认为10
//                pageList: [10, 15, 20, 25], //可以设置每页记录条数的列表
//                onSelectPage: function(pageNumber, pageSize) {
//                    SearchTable(pageNumber, pageSize);//每次更换页面时触发更改
//                }
//            });

            //默认刷新
//           SearchTable(1,10);
        });


        function SearchTable(_pageNumber, _pageSize){
            var dg =$('#dg');
            var pager =dg.datagrid('getPager');

            //查询条件写在这里,需附带页码信息
            $.post('/fs', {page:_pageNumber-1,size:_pageSize}, function(data) {

                $('#dg').datagrid('loadData', data.content);

                //注意此处从数据库传来的data数据有记录总行数的total列
                var _total = data.totalElements;
                pager.pagination({
                    //更新pagination的导航列表各参数
                    total: _total,//总数
                    pageSize: _pageSize,//行数
                    pageNumber: _pageNumber//页数
                });

            });
        }


        var toolbar = [{
            text:'新增',
            iconCls:'icon-add',
            handler:function(){newUser()}
        },{
            text:'编辑',
            iconCls:'icon-edit',
            handler:function(){editUser()}
        },'-',{
            text:'删除',
            iconCls:'icon-remove',
            handler:function(){removeUser()}
        }];
    </script>
    <script type="text/javascript">
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('setTitle','New User');
            $('#fm').form('clear');
            url = 'save_user.php';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
                url = 'update_user.php?id='+row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.success){
                        $('#dlg').dialog('close');		// close the dialog
                        $('#dg').datagrid('reload');	// reload the user data
                    } else {
                        $.messager.show({
                            title: 'Error',
                            msg: result.msg
                        });
                    }
                }
            });
        }
        function removeUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to remove this user?',function(r){
                    if (r){
                        $.post('remove_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');	// reload the user data
                            } else {
                                $.messager.show({	// show error message
                                    title: 'Error',
                                    msg: result.msg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
    </script>
</body>
</html>