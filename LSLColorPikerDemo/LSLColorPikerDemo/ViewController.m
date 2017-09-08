//
//  ViewController.m
//  LSLColorPickerDemo
//
//  Created by Bruce Li on 15/12/27.
//  Copyright © 2015年 longshao. All rights reserved.
//

#import "ViewController.h" 
#import "LSLHSBColorPickerView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *currentSelectedColorPreview;
@property (weak, nonatomic) IBOutlet UIView *contentView;

@property (nonatomic, strong) UIColor *currentSelectedColor;
@property (nonatomic, strong) LSLHSBColorPickerView *colorPickerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /// color picker view
    _colorPickerView = [[LSLHSBColorPickerView alloc] init];
    [_contentView addSubview:_colorPickerView];
    
    /// selected color preview
    _currentSelectedColorPreview.backgroundColor = _colorPickerView.preColor;
    
    /// selected color block
    __weak typeof(self) weakSelf = self;
    [_colorPickerView colorSelectedBlock:^(UIColor *color, BOOL isConfirm) {
        /// do something...
        ///
        weakSelf.currentSelectedColorPreview.backgroundColor = color;
        weakSelf.currentSelectedColor = color;
    }];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    self.colorPickerView.frame = self.contentView.bounds;
}

#pragma mark - save or clean colors in archiver

- (IBAction)saveSelectedColorToArchiver {
    if (self.currentSelectedColor) {
        [self.colorPickerView saveSelectedColorToArchiver];
        self.currentSelectedColor = nil;
    }
}

- (IBAction)cleanCache:(id)sender {
    [LSLHSBColorPickerView cleanSelectedColorInArchiver];
}

@end
