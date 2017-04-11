//
//  HomeViewController.m
//  YWLabelDemo
//
//  Created by 王亚文 on 2017/4/11.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "HomeViewController.h"
#import "YWLabel.h"




@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSString *text = @"去医院体检，医生拿着我的报告单说：幸亏你来的早啊。在我惊出一身冷汗的时候，医生不慌不忙的说：再晚点，我就下班了。。。";
    
    
    // 使用1『设置行间距』
    YWLabel *lab = [[YWLabel alloc] initWithFrame:CGRectMake(10, 80, Width_MainScreen-20, 100)];
    [lab labelText:text lineSpacing:8.f];
    lab.backgroundColor = [UIColor orangeColor];
    [self.contentView addSubview:lab];
    
    
    
    // 使用2『它能生成富文本』
    NSArray *texts = @[@"人民", @"的", @"名义"];
    NSArray *colors = @[[UIColor redColor], [UIColor blackColor],[UIColor purpleColor]];
    NSArray *fonts = @[FONT(18), FONT(13), FONT(15)];
    
    NSAttributedString *attrStr = [YWLabel attributedTexts:texts textColors:colors textFonts:fonts];
    YWLabel *lab2 = [[YWLabel alloc] initWithFrame:CGRectMake(10, 250, Width_MainScreen-20, 50)];
    lab2.backgroundColor = [UIColor orangeColor];
    lab2.attributedText = attrStr;
    [self.contentView addSubview:lab2];
    
    
    
    // 使用3『它能计算文本所占高度』
    CGFloat text_height1 = [YWLabel sizeLabelWith:Width_MainScreen-20 text:text font:FONT(14)].height;
    CGFloat text_height2 = [YWLabel sizeLabelWith:Width_MainScreen-20 text:text font:FONT(14) lineSpacing:8].height;
    CGFloat text_height3 = [YWLabel sizeLabelWith:Width_MainScreen attributedString:attrStr].height;
    
    NSLog(@"❤text_height1-%f\n ❤text_height2-%f\n ❤text_height3-%f\n ",text_height1, text_height2, text_height3);
    
}

@end
