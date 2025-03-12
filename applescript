--------------------------------------------------------------------------------
-- 0. 准备：辅助变量 & beep 测试
--------------------------------------------------------------------------------
-- 测试：让脚本开始时就发出提示音，确认脚本已运行
-- beep 1
-- display dialog "脚本开始执行..." buttons {"继续"} default button "继续"

--------------------------------------------------------------------------------
-- 1. 获取当前前台应用名称，后面要切回
--------------------------------------------------------------------------------
tell application "System Events"
	set frontAppProcess to first process whose frontmost is true
	set frontApp to name of frontAppProcess
end tell

-- display dialog ("当前前台应用：" & frontApp) buttons {"继续"} default button "继续"

--------------------------------------------------------------------------------
-- 2. 激活前台应用并复制选中的文本
--------------------------------------------------------------------------------
tell application frontApp
	activate
end tell

-- 显示对话框，提示即将执行 Cmd + C
-- display dialog "即将复制选中文本 (Cmd + C)" buttons {"继续"} default button "继续"

-- 给一点时间让系统切回前台App
delay 0.5

tell application "System Events"
	try
		-- 使当前应用保持前台
		tell process frontApp
			set frontmost to true
			
			-- 根据系统语言选择合适的菜单名：
			-- 如果是英文系统：menu bar item "Edit" -> menu "Edit" -> menu item "Copy"
			-- 如果是中文系统：menu bar item "编辑" -> menu "编辑" -> menu item "复制"
			-- 下面示例以英文为例，可改成中文。
			
			click menu bar item "Edit" of menu bar 1
			delay 0.2
			click menu item "Copy" of menu "Edit" of menu bar item "Edit" of menu bar 1
		end tell
	on error errMsg
		display dialog "在点击菜单“复制”时出错: " & errMsg
	end try
end tell

--------------------------------------------------------------------------------
-- 2.1 立刻查看剪贴板内容（调试用）
--------------------------------------------------------------------------------
-- 延时一点，确保复制完成
delay 0.5
set currentClipboard to the clipboard as text
-- display dialog ("复制后，剪贴板内容为： " & return & currentClipboard) buttons {"继续"} default button "继续"

--------------------------------------------------------------------------------
-- 3. 启动或前置备忘录 (Notes)，并粘贴到文稿底部，加两个回车
--------------------------------------------------------------------------------
-- display dialog "现在切到备忘录并粘贴" buttons {"继续"} default button "继续"

tell application "Notes"
	activate
end tell

-- 等待备忘录激活
delay 1

tell application "System Events"
	beep 1
	keystroke "v" using {command down}
	key code 36 -- 回车
	key code 36 -- 回车
end tell

--------------------------------------------------------------------------------
-- 3.1 再次查看剪贴板内容（调试用）
--------------------------------------------------------------------------------
-- 也可以看看在粘贴之后，剪贴板是否还保持着同样的内容
delay 0.5
-- set currentClipboard2 to the clipboard as text
-- display dialog ("粘贴后，剪贴板内容为： " & return & currentClipboard2) buttons {"继续"} default button "继续"

--------------------------------------------------------------------------------
-- 4. 回到原应用
--------------------------------------------------------------------------------
-- display dialog "现在将返回 " & frontApp buttons {"继续"} default button "继续"

tell application frontApp
	activate
end tell

--------------------------------------------------------------------------------
-- 5. 脚本结束
--------------------------------------------------------------------------------
-- beep 1
-- display dialog "脚本已结束" buttons {"完成"} default button "完成"
