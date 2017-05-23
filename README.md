# FWDebug

[![Pod Version](http://img.shields.io/cocoapods/v/FWDebug.svg?style=flat)](http://cocoadocs.org/docsets/FWDebug/)
[![Pod Platform](http://img.shields.io/cocoapods/p/FWDebug.svg?style=flat)](http://cocoadocs.org/docsets/FWDebug/)
[![Pod License](http://img.shields.io/cocoapods/l/FWDebug.svg?style=flat)](https://github.com/lszzy/FWDebug/blob/master/LICENSE)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/lszzy/FWDebug)

iOS调试库，支持iOS8+，无需添加任何代码，方便iOS开发和测试。

## 屏幕截图
![屏幕截图](FWDebug.gif)

## 使用教程
真机或模拟器中5秒内摇一摇两次即可出现调试菜单。功能如下：

* FLEX调试工具
* Class和Protocol的头文件查看
* FPS、内存、CPU占用率显示
* 手机、App信息查看
* App崩溃日志的记录、查看
* App文件管理器
* Documents文件http、webdav服务器
* iOS10真机NSLog显示
* 手机App列表查看
* JSPatch动态修改应用
* 生成dylib动态库并注入其它App

## 安装教程
推荐使用CocoaPods安装，自动管理依赖和环境配置。如需手工导入请参考Example项目配置。

### CocoaPods
本调试库支持Debug和Release环境，一般Debug模式开启，提交AppStore时请移除。Podfile示例：

	platform :ios, '8.0'
	# use_frameworks!

	target 'Example' do
	  pod 'FWDebug', :configurations => ['Debug']
	end

### Carthage
本调试库支持Carthage，Cartfile示例：

	github "lszzy/FWDebug"

执行`carthage update`并拷贝`FWDebug.framework`到项目即可。

## 更新日志
1.2.1版本：

	* 同步FLEX最新主干代码
	* 添加屏幕截图、更新说明

1.2.0版本：

	* 修复iOS10真机NSLog显示
	* 添加手机App列表查看
	* 添加JSPatch动态修改应用
	* 添加dylib项目和注入现有App工具

1.1.0版本：
	
	* 调整项目结构
	* 更新FLEX到2.4.0版本
	* 添加崩溃日志调试
	* 添加Documents文件http、webdav服务器
	* 添加头文件查看
	* 添加FPS显示
	* 添加App、设备信息

1.0.0版本：

	* 添加FLEX调试

## 第三方库
本调试库使用了第三方库，在此感谢所有第三方库的作者。列举如下：
	
* [FLEX](https://github.com/Flipboard/FLEX)
* [GCDWebServer](https://github.com/swisspol/GCDWebServer)
* [RuntimeBrowser](https://github.com/nst/RuntimeBrowser)
* [KSCrash](https://github.com/kstenerud/KSCrash)
* [JSPatch](https://github.com/bang590/JSPatch)
* [fishhook](https://github.com/facebook/fishhook)

## 官方网站
[大勇的网站](http://www.ocphp.com)
