//
//  FrameDefine.h
//  WBBaseProject
//
//  Created by 吴斌 on 2017/6/27.
//  Copyright © 2017年 吴斌. All rights reserved.
//

#ifndef FrameDefine_h
#define FrameDefine_h

/*!	设置全局宽高 */
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenSize [UIScreen mainScreen].bounds.size
#define kScreenOrigin [UIScreen mainScreen].bounds.origin

/*! 状态栏高 */
#define  StatusBarHeight      20.f

/*! 导航栏高 */
#define  NavigationBarHeight  44.f

/*! Tabbar高 */
#define  TabbarHeight         49.f

/*! 状态栏和导航栏总高度 */
#define  StatusBarAndNavigationBarHeight   (20.f + 44.f)

/*! iPhone4 or iPhone4s */
#define  iPhone4_4s     (kScreenWidth == 320.f && kScreenHeight == 480.f)

/*! iPhone5 or iPhone5s */
#define  iPhone5_5s     (kScreenWidth == 320.f && kScreenHeight == 568.f)

/*! iPhone6 or iPhone6s */
#define  iPhone6_6s     (kScreenWidth == 375.f && kScreenHeight == 667.f)

/*! iPhone6Plus or iPhone6sPlus */
#define  iPhone6_6sPlus (kScreenWidth == 414.f && kScreenHeight == 736.f)



#endif /* FrameDefine_h */
