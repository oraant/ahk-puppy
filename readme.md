■■■ 功能键梳理 ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■

═══ 系统级 ═══════════════════════════════════════════════

快捷键	概念		Tab						编辑				操作					
Shift	元素级		切换元素(表格/链接)		切换大小写			彻底删除 内部任务管理器等
Ctrl	程序级		切换标签				剪切 复制 粘贴		全选 保存 打开 撤销 重做
Alt		程序级		切换程序				列编辑 特殊字符		菜单功能 关闭程序 查看属性 地址栏 进退导航 窗口菜单 切换全屏
Win		系统级		切换桌面									窗口大小 切换屏幕 锁定桌面 打开桌面 系统设置 放大镜等
Fn		硬件级		调整亮度等				                	

--- 自定义 -----------------------------------------------

快捷键	概念		鼠标滚轮	数字键		功能键	Win	Alt Ctrl Shift
L       程序级
R       程序级
M       程序级
1       系统级		调整音量	切换程序
2       系统级		调整亮度	自律按键					显隐任务栏 

--- 备注 -----------------------------------------------

自定义组合键会导致原按键失效，有两种解决方法：

1，用 a::send a 的方式能使其被正常点击，但无法执行拖动等操作。
比如无法在 IDE 中使用中键的列选择模式，故只适用于 XButton12 这种的平常只会被点击的按键。

2，用 ~a & b:xx 的方式能使其被正常拖动，但会响应按键抬起事件。
比如在 Chrome 中 XButton12 会触发进退，故只适用于 LRMButton 这种抬起事件影响不大的按键。