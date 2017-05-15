//
//  UIImageView+GIF.h
//  DemoGif
//
//  Created by liufan on 13-9-2.
//  Copyright (c) 2013年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (GIF)

/**
 *  从指定的路径加载GIF并创建UIImageView
 *
 *  @param file  文件路径
 *  @param frame CGRect
 *
 *  @return UIImageView
 */
+ (UIImageView *)imageViewWithGIFFile:(NSString *)file frame:(CGRect)frame;

@end
