//
//  Define.h
//  WBBaseProject
//
//  Created by 吴斌 on 2017/6/27.
//  Copyright © 2017年 吴斌. All rights reserved.
//

#ifndef Define_h
#define Define_h

/*! 用safari打开URL */
#define WB_OpenUrl(urlStr) [BASharedApplication openURL:[NSURL URLWithString:urlStr]]

/*! 字体 */
#define WB_FontSize(fontSize) [UIFont systemFontOfSize:fontSize]

/*! 复制文字内容 */
#define WB_CopyContent(content) [[UIPasteboard generalPasteboard] setString:content]

/*! 随机数据 */
#define WB_RandomData arc4random_uniform(5)

/*! weakSelf */
#define WB_WEAKSELF typeof(self) __weak weakSelf = self;
#define WB_WeakSelf(type)  __weak typeof(type) weak##type = type;

/*! strongSelf */
#define WB_StrongSelf(type)  __strong typeof(type) type = weak##type;

/*! 通知 */
#define WB_NotiCenter [NSNotificationCenter defaultCenter]

/*! NSUserDefaults */
#define WB_UserDefault [NSUserDefaults standardUserDefaults]

/*! 图片 */
#define WB_ImageName(imageName) [UIImage imageNamed:imageName]

/*! 定义 UIImage 对象 */
#define WB_ImageFromBundle(fileName) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:A ofType:nil]]

/*! 获取当前语言 */
#define WB_CurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

/*! 警告框-一个按钮【VC】 */
#define WB_SHOW_ALERT(title, msg)  UIAlertController *alert = [UIAlertController alertControllerWithTitle:title  message:msg preferredStyle:UIAlertControllerStyleAlert];\
[alert addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {\
}]];\
[self presentViewController:alert animated:YES completion:nil];\

/*! 警告框-一个按钮【View】 */
#define WB_AlertAtView(msg) [[[UIAlertView alloc] initWithTitle:@"温馨提示" message:msg delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil] show];

/*! 设置 view 圆角和边框 */
#define WB_ViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

/*! 由角度转换弧度 */
#define WB_DegreesToRadian(x) (M_PI * (x) / 180.0)

/*! 由弧度转换角度 */
#define WB_RadianToDegrees(radian) (radian * 180.0)/(M_PI)

#endif /* Define_h */
