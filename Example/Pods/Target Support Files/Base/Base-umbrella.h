#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BaseNavigationController.h"
#import "BaseTabBarController.h"
#import "BaseViewController.h"

FOUNDATION_EXPORT double BaseVersionNumber;
FOUNDATION_EXPORT const unsigned char BaseVersionString[];

