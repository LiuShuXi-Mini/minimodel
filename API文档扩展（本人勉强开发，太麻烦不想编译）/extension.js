const vscode = require('vscode');

/**
 * 插件被激活时触发，所有代码总入口
 * @param {*} context 插件上下文
 */
exports.activate = function(context) {
    console.log('恭喜，您的扩展“vscode-plugin-demo”已被激活！');
    // 注册命令
    context.subscriptions.push(vscode.commands.registerCommand('extension.sayHello', function () {
        WebView("http://developers.mini1.cn","API文档")
	},
	context.subscriptions.push(vscode.commands.registerCommand('extension.runooblua', function () {
        WebView("http://runoob.com/lua","lua教程")
    }))));
};

/**
 * 插件被释放时触发
 */
exports.deactivate = function() {
    console.log('您的扩展“vscode-plugin-demo”已被释放！')
};
function WebView(url,text){
		// 创建webview
		const panel = vscode.window.createWebviewPanel(
			'testWebview', // viewType
			text, // 视图标题
			vscode.ViewColumn.One, // 显示在编辑器的哪个部位
			{
				enableScripts: true, // 启用JS，默认禁用
				retainContextWhenHidden: true, // webview被隐藏时保持状态，避免被重置
			}
		);
		panel.webview.html = "<html><script>window.location=' "+　url + " ';</script></html>"
}