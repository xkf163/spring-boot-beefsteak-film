package cn.xukangfeng.system;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;


/**
 * Created by Administrator on 2017/3/14.
 */
public class EasyUITree implements Serializable{
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    private Integer id ;
    private String pid ;
    private String text ;
    private String iconCls ;
    private String state ;
    private String checked ;
    private Map<String,Object> attributes;

    public Map<String, Object> getAttributes() {
        return attributes;
    }

    public void setAttributes(Map<String, Object> attributes) {
        this.attributes = attributes;
    }

    private List<EasyUITree> children = new ArrayList<EasyUITree>() ;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getIconCls() {
        return iconCls;
    }

    public void setIconCls(String iconCls) {
        this.iconCls = iconCls;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getChecked() {
        return checked;
    }

    public void setChecked(String checked) {
        this.checked = checked;
    }

    public List<EasyUITree> getChildren() {
        return children;
    }

    public void setChildren(List<EasyUITree> children) {
        this.children = children;
    }

    /******** setter and getter **********/

    public static List<EasyUITree> formatTree(List<EasyUITree> list) {

        EasyUITree root = new EasyUITree();
        EasyUITree node = new EasyUITree();
        List<EasyUITree> treelist = new ArrayList<EasyUITree>();// 拼凑好的json格式的数据
        List<EasyUITree> parentnodes = new ArrayList<EasyUITree>();// parentnodes存放所有的父节点

        if (list != null && list.size() > 0) {
            root = list.get(0) ;
            //循环遍历oracle树查询的所有节点
            for (int i = 1; i < list.size(); i++) {
                node = list.get(i);
                if(node.getPid().equals(root.getId())){
                    //为tree root 增加子节点
                    parentnodes.add(node) ;
                    root.getChildren().add(node) ;
                }else{//获取root子节点的孩子节点
                    getChildrenNodes(parentnodes, node);
                    parentnodes.add(node) ;
                }
            }
        }
        treelist.add(root) ;
        return treelist ;

    }

    private static void getChildrenNodes(List<EasyUITree> parentnodes, EasyUITree node) {
        //循环遍历所有父节点和node进行匹配，确定父子关系
        for (int i = parentnodes.size() - 1; i >= 0; i--) {

            EasyUITree pnode = parentnodes.get(i);
            //如果是父子关系，为父节点增加子节点，退出for循环
            if (pnode.getId().equals(node.getPid())) {
                pnode.setState("closed") ;//关闭二级树
                pnode.getChildren().add(node) ;
                return ;
            } else {
                //如果不是父子关系，删除父节点栈里当前的节点，
                //继续此次循环，直到确定父子关系或不存在退出for循环
                parentnodes.remove(i) ;
            }
        }
    }
}
