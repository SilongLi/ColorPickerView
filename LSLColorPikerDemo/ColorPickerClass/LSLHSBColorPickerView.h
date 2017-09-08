//
//  LSLColorPickerView.h
//  LongshaoDream
//
//  Created by Bruce Li on 16/4/17.
//  Copyright © 2016年 longshao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLHSBColorPickerView : UIView

@property (nonatomic, strong) UIColor *preColor;

- (void)saveSelectedColorsToArchiver;
+ (void)cleanSelectedColorsInArchiver;

- (void)colorSelectedBlock:(void(^)(UIColor *color, BOOL isConfirm))colorSelectedBlock;

@end
