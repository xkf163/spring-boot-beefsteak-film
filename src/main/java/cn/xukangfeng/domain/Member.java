//package cn.xukangfeng.domain;
//
//import org.hibernate.validator.constraints.Length;
//
//import java.io.Serializable;
//import java.math.BigDecimal;
//
///**
// * Created by Administrator on 2017/3/27.
// */
//public class Member implements Serializable {
//
//
//    /**
//     *
//     */
//    private static final long serialVersionUID = 2906447779118672379L;
//    private String memberId;
//
//    /**
//     * 会员名称
//     */
//    @Length(max = 50, message = "会员名称长度必须介于0和50之间")
//    @Words(field = "会员名称", message = "会员名称包含敏感词")
//    private String memberName;
//
//    /**
//     * 真实姓名
//     */
//    @Length(max = 20, message = "真实姓名长度必须介于0和20之间")
//    @Words(field = "真实姓名", message = "真实姓名包含敏感词")
//    private String memberTruename;
//
//    /**
//     * 会员头像
//     */
//    @Length(max = 300, message = "真实姓名长度必须介于0和300之间")
//    @Words(field = "会员头像", message = "会员头像包含敏感词")
//    private String memberAvatar;
//
//    /**
//     * 会员性别（3:保密，2：女，1：男）
//     */
//    private Integer memberSex;
//
//    /**
//     * 会员生日
//     */
//    private Long memberBirthday;
//
//    /**
//     * 会员生日
//     */
//    private Timestamp memberBirthdaystr;
//
//    /**
//     * 密码
//     */
//    @Length(max = 300, message = "密码长度必须介于0和300之间")
//    @Words(field = "密码", message = "密码包含敏感词")
//    private String paymentPasswd;
//
//    /**
//     * 支付密码
//     */
//    @Length(max = 300, message = "支付密码长度必须介于0和300之间")
//    @Words(field = "支付密码", message = "支付密码包含敏感词")
//    private String memberPasswd;
//
//    /**
//     * 邮箱
//     */
//    @Length(max = 100, message = "邮箱长度必须介于0和100之间")
//    @Words(field = "邮箱", message = "邮箱包含敏感词")
//    private String memberEmail;
//
//    /**
//     * QQ
//     */
//    @Length(max = 100, message = "QQ长度必须介于0和100之间")
//    @Words(field = "QQ", message = "QQ包含敏感词")
//    private String memberQq;
//
//    /**
//     * 阿里旺旺
//     */
//    @Length(max = 100, message = "阿里旺旺长度必须介于0和100之间")
//    @Words(field = "阿里旺旺", message = "阿里旺旺包含敏感词")
//    private String memberWw;
//
//    /**
//     * 登录次数
//     */
//    private Integer memberLoginNum;
//
//    /**
//     * 会员注册时间
//     */
//    //private Long createtime;
//
//    /**
//     * 当前登录时间
//     */
//    private Long memberLoginTime;
//    /**
//     * 当前登录时间
//     */
//    private Timestamp memberLoginTimestr;
//
//    /**
//     * 上次登录时间
//     */
//    private Long memberOldLoginTime;
//
//    /**
//     * 上次登录时间
//     */
//    private Timestamp memberOldLoginTimestr;
//
//    /**
//     * 当前登录ip
//     */
//    @Length(max = 20, message = "当前登录ip长度必须在0和20之间")
//    @Words(field = "当前登录ip", message = "当前登录ip包含敏感词")
//    private String memberLoginIp;
//
//    /**
//     * 上次登录ip
//     */
//    @Length(max = 20, message = "上次登录ip长度必须在0和20之间")
//    @Words(field = "上次登录ip", message = "上次登录ip包含敏感词")
//    private String memberOldLoginIp;
//
//    /**
//     * qq互联id
//     */
//    @Length(max = 100, message = "qq互联id长度必须在0和100之间")
//    @Words(field = "qq互联id", message = "qq互联id包含敏感词")
//    private String memberOpenid;
//
//    /**
//     * qq账号相关信息
//     */
//    @Words(field = "qq账号相关信息", message = "qq账号相关信息包含敏感词")
//    private String memberInfo;
//
//    /**
//     * 会员等级积分
//     */
//    private Integer memberRankPoints;
//
//    /**
//     * 会员消费积分
//     */
//    private Integer memberConsumePoints;
//
//    /**
//     * 预存款可用金额
//     */
//    private BigDecimal availablePredeposit;
//
//    /**
//     * 预存款冻结金额
//     */
//    private BigDecimal freezePredeposit;
//
//    /**
//     * 是否允许举报(1可以/2不可以)
//     */
//    private Integer informAllow;
//
//    /**
//     * 会员是否有购买权限 1为开启 0为关闭
//     */
//    private Integer isBuy;
//
//    /**
//     * 会员是否有咨询和发送站内信的权限 1为开启 0为关闭
//     */
//    private Integer isAllowtalk;
//
//    /**
//     * 会员的开启状态 1为开启 0为关闭
//     */
//    private Integer memberState;
//
//    /**
//     * 会员信用
//     */
//    private Integer memberCredit;
//
//    /**
//     * sns空间访问次数
//     */
//    private Integer memberSnsvisitnum;
//
//    /**
//     * 地区ID
//     */
//    private String memberAreaid;
//
//    /**
//     * 城市ID
//     */
//    private String memberCityid;
//
//    /**
//     * 省份ID
//     */
//    private String memberProvinceid;
//
//    /**
//     * 地区内容
//     */
//    @Length(max = 255, message = "地区内容必须介于0和255之间")
//    @Words(field = "地区内容", message = "地区内容包含敏感词")
//    private String memberAreainfo;
//
//    /**
//     * 隐私设定
//     */
//    @Words(field = "隐私设定", message = "隐私设定包含敏感词")
//    private String memberPrivacy;
//
//    /**
//     * 登录类型：1、qq 2､sina 3、weixin
//     */
//    @Length(max = 100, message = "登录类型长度必须介于0和100之间")
//    @Words(field = "登录类型", message = "登录类型包含敏感词")
//    private String signCode;
//
//    private Integer signCodeState;
//
//    /**
//     * 排序
//     */
//    @Words(field = "排序", message = "排序包含敏感词")
//    private String orderString;
//
//    /**
//     * 状态查询
//     */
//    @Words(field = "状态查询", message = "状态查询包含敏感词")
//    private String status;
//
//    /**
//     * sql 返回的count 记录数
//     */
//    @Words(field = "条数", message = "条数包含敏感词")
//    private String count;
//
//    /**
//     * 昨天总数
//     */
//    @Words(field = "昨天总数", message = "昨天总数包含敏感词")
//    private String yesCount;
//
//    /**
//     * 今天总数
//     */
//    @Words(field = "今天总数", message = "今天总数包含敏感词")
//    private String todayCount;
//
//    /**
//     * 小时
//     */
//    @Words(field = "小时", message = "小时包含敏感词")
//    private String hour;
//
//    /**
//     * 开始日期
//     */
//    @Words(field = "开始时间", message = "开始时间包含敏感词")
//    private String starttime;
//
//    /**
//     * 结束日期
//     */
//    @Words(field = "结束日期", message = "结束日期包含敏感词")
//    private String endtime;
//
//    /**
//     * 新密码
//     */
//    @Words(field = "新密码", message = "新密码包含敏感词")
//    private String newPasswd;
//
//    /**
//     * 手机号
//     */
//    @Length(max = 11, message = "手机号长度必须介于0和11之间")
//    @Words(field = "手机号", message = "手机号包含敏感词")
//    private String memberMobile;
//
//    /**
//     * 未付款订单数量
//     */
//    private int noPayOrder;
//
//    /**
//     * 未确认收货数量
//     */
//    private int noReceiveOrder;
//
//    /**
//     * 未评论订单数量
//     */
//    private int noEvaluationOrder;
//
//    /**
//     * 未发货订单数量
//     */
//    private int noFilledOrder;
//
//    /**
//     * 收藏的商品的数量
//     */
//    private Integer favGoodsCount;
//    /**
//     * 收藏的店铺的数量
//     */
//    private Integer favStoreCount;
//
//    /**
//     * 会员等级
//     */
//    private String memberGradeId;
//
//    /**
//     * 用户类型
//     */
//    @Words(field = "用户类型", message = "用户类型包含敏感词")
//    private String memberType;
//
//    /**
//     * 扩展字段用于存放未读信息条数
//     */
//    private Integer noscan;
//
//    /**
//     * 会员升级日期
//     */
//    private Long gradeDate;
//
//    /**
//     * 会员升级日期
//     */
//    private Timestamp gradeDateStr;
//
//    /**
//     *来自那个平台注册 0pc ，1安卓 ，2ios
//     */
//    private int memberIdentification;
//
//    /**
//     * 第三方注册默认0 本站，1微信，2QQ，3新浪
//     */
//    private int memberThirdParty;
//
//    /**
//     * 临时字段用来存注册百分比
//     */
//    private BigDecimal sct;
//
//    private int membersum;
//
//    private String membertime;
//
//    /**
//     * 邀请码
//     */
//    private String memberInvitationCode;
//
//    /**
//     * 邀请人编码
//     */
//    private String memberInvitationCodeFrom;
//
//    /**
//     * 邀请人
//     */
//    private String memberFrom;
//
//    /**
//     * 会员角色：1：会员，2：店铺和会员
//     */
//    private String memberRole;
//
//    public void setGradeDate(Long gradeDate) {
//        this.gradeDate = gradeDate;
//        if (null != gradeDate) {
//            gradeDateStr = DateUtils.getTimestampByLong(gradeDate);
//        }
//    }
//    public void setMemberBirthday(Long memberBirthday) {
//        this.memberBirthday = memberBirthday;
//        if (null != memberBirthday) {
//            memberBirthdaystr = DateUtils.getTimestampByLong(memberBirthday);
//        }
//    }
//
//}
