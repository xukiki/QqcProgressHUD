//
//  QqcProgressHUD+Qqc.h
//  QqcFramework
//
//  Created by qiuqinchuan on 16/02/25.
//  Copyright (c) 2015年 Qqc. All rights reserved.
//

#import "QqcProgressHUD+Qqc.h"
#import "UIImage+Qqc.h"

@implementation QqcProgressHUD (Qqc)

#define miniSize CGSizeMake(135.0f,135.0f)

#pragma mark - 添加到视图的接口
+ (id)showTextOnly:(NSString *)string toView:(UIView *)view
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeText;
    hud.labelText = string;
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2.0f];
    return hud;
}


+ (id)showLoadingImageOnlyToView:(UIView *)view
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeIndeterminate;
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}


+ (id)showTipWithLoadingImage:(NSString*)string toView:(UIView *)view
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeIndeterminate;
    hud.labelText = string;
    hud.removeFromSuperViewOnHide = YES;
    return hud;
}

+ (id)showTipWithCustomImage:(NSString *)string image:(UIImage*)image toView:(UIView *)view;
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeCustomView;
    hud.labelText = string;
    hud.customView = [[UIImageView alloc] initWithImage:image];
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2.0];
    return hud;
}

+ (id)showTipWithSuccessImage:(NSString *)string toView:(UIView *)view
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeCustomView;
    hud.labelText = string;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageFromBundleWithName:@"success.png" bundleName:@"QqcBaseFrameworkRES"]];
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2.0];
    return hud;
}

+ (id)showTipWithErrorImage:(NSString *)string toView:(UIView *)view
{
    if (!view)
    {
        return nil;
    }
    
    [QqcProgressHUD hideAllHUDsForView:view animated:NO];
    QqcProgressHUD *hud = [QqcProgressHUD showHUDAddedTo:view animated:YES];
    hud.mode = QqcProgressHUDModeCustomView;
    hud.labelText = string;
    hud.customView = [[UIImageView alloc] initWithImage:[UIImage imageFromBundleWithName:@"error.png" bundleName:@"QqcBaseFrameworkRES"]];
    hud.removeFromSuperViewOnHide = YES;
    [hud hide:YES afterDelay:2.0];
    return hud;
}

#pragma mark - 添加到控制器的接口
+ (id)showTextOnly:(NSString *)string toViewController:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showTextOnly:string toView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showTextOnly:string toView:vc.view];
    }
    
    return hud;
}

+ (id)showLoadingImageOnlyToVC:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showLoadingImageOnlyToView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showLoadingImageOnlyToView:vc.view];
    }
    
    return hud;
}

+ (id)showTipWithLoadingImage:(NSString*)string toViewController:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showTipWithLoadingImage:string toView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showTipWithLoadingImage:string toView:vc.view];
    }
    
    return hud;
}

+ (id)showTipWithCustomImage:(NSString *)string image:(UIImage*)image toViewController:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showTipWithLoadingImage:string toView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showTipWithLoadingImage:string toView:vc.view];
    }
    
    return hud;
}

+ (id)showTipWithSuccessImage:(NSString *)string toViewController:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showTipWithSuccessImage:string toView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showTipWithSuccessImage:string toView:vc.view];
    }
    
    return hud;
}

+ (id)showTipWithErrorImage:(NSString *)string toViewController:(UIViewController *)vc
{
    QqcProgressHUD *hud = nil;
    if (vc.navigationController)
    {
        hud = [QqcProgressHUD showTipWithErrorImage:string toView:vc.navigationController.view];
    }
    else
    {
        hud = [QqcProgressHUD showTipWithErrorImage:string toView:vc.view];
    }
    
    return hud;
}

+ (NSUInteger)hideAllHUDsForVC:(UIViewController *)vc animated:(BOOL)animated
{
    NSArray *huds = nil;
    if (vc.navigationController) {
        huds = [QqcProgressHUD allHUDsForView:vc.navigationController.view];
    }
    else{
        huds = [QqcProgressHUD allHUDsForView:vc.view];
    }
    
    for (QqcProgressHUD *hud in huds) {
        hud.removeFromSuperViewOnHide = YES;
        [hud hide:animated];
    }
    
    return [huds count];
}

@end
