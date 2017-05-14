//
//  QqcProgressHUD+Qqc.h
//  QqcFramework
//
//  Created by qiuqinchuan on 16/02/25.
//  Copyright (c) 2015年 Qqc. All rights reserved.
//

#import "QqcProgressHUD.h"

@interface QqcProgressHUD (Qqc)

#pragma mark - 添加到视图的接口
/**
 *  仅显示文本信息
 *
 *  @param string 要显示的字符串
 *  @param view   父view
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showTextOnly:(NSString *)string toView:(UIView *)view;

/**
 *  显示加载的菊花
 *
 *  @param view 父view
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showLoadingImageOnlyToView:(UIView *)view;

/**
 *  显示带菊花的文本信息
 *
 *  @param string 要显示的字符串
 *  @param view   父view
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showTipWithLoadingImage:(NSString*)string toView:(UIView*)view;

/**
 *  显示自带图片的提示
 *
 *  @param string 提示文字
 *  @param image  自带图片
 *  @param view   父view
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithCustomImage:(NSString *)string image:(UIImage*)image toView:(UIView *)view;

/**
 *  显示获取数据成功的加载圈
 *
 *  @param string 要显示的字符串
 *  @param view   父view
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithSuccessImage:(NSString *)string toView:(UIView *)view;

/**
 *  显示获取数据失败的加载圈
 *
 *  @param string 要显示的字符串
 *  @param view   父view
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithErrorImage:(NSString *)string toView:(UIView *)view;


//+ (NSUInteger)hideAllHUDsForView:(UIView *)view animated:(BOOL)animated;

#pragma mark - 添加到控制器的接口
/**
 *  仅显示文本信息
 *
 *  @param string 要显示的字符串
 *  @param vc   父VC
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showTextOnly:(NSString *)string toViewController:(UIViewController *)vc;

/**
 *  显示加载的菊花
 *
 *  @param vc 父VC
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showLoadingImageOnlyToVC:(UIViewController *)vc;

/**
 *  显示带菊花的文本信息
 *
 *  @param string 要显示的字符串
 *  @param vc   父VC
 *
 *  @return QqcProgressHUD对象
 */
+ (id)showTipWithLoadingImage:(NSString*)string toViewController:(UIViewController *)vc;

/**
 *  显示自带图片的提示
 *
 *  @param string 提示文字
 *  @param image  自带图片
 *  @param vc   父VC
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithCustomImage:(NSString *)string image:(UIImage*)image toViewController:(UIViewController *)vc;

/**
 *  显示获取数据成功的加载圈
 *
 *  @param string 要显示的字符串
 *  @param vc   父VC
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithSuccessImage:(NSString *)string toViewController:(UIViewController *)vc;

/**
 *  显示获取数据失败的加载圈
 *
 *  @param string 要显示的字符串
 *  @param vc   父VC
 *
 *  @return 返回QqcProgressHUD实例
 */
+ (id)showTipWithErrorImage:(NSString *)string toViewController:(UIViewController *)vc;

/**
 *  隐藏某个控制器包含的所有hub
 *
 *  @param vc       父VC
 *  @param animated 是否支持动画
 *
 *  @return 返回隐藏hub的个数
 */
+ (NSUInteger)hideAllHUDsForVC:(UIViewController *)vc animated:(BOOL)animated;

@end
