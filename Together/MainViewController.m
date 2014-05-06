//
//  MainViewController.m
//  Together
//
//  Created by 韦兴乾 on 14-4-26.
//  Copyright (c) 2014年 韦兴乾. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *mainViewPicture;
    mainViewPicture = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 640)];
    mainViewPicture.backgroundColor = [UIColor yellowColor];
    
    
//    UIImage *firstPicture;
//    firstPicture = [ UIImage imageNamed:@"hehe.png"];
//
//    mainViewPicture.image = firstPicture;
//    
//    UILabel *gustName;
//    gustName = [[UILabel alloc]init];
//    gustName.frame = CGRectMake(20, 160, 280, 140);
//    gustName.backgroundColor = [UIColor greenColor];
    
   
    
    //先做一个大的框架，用来接纳所有元素
    UIImageView *_mainFrameView;
    _mainFrameView = [[UIImageView alloc]initWithFrame:CGRectMake(20, 100, 280, 260)];
    _mainFrameView.backgroundColor = [UIColor whiteColor];
    [mainViewPicture addSubview:_mainFrameView  ];
    
    //公仔，想用图片代替，不知道怎么做，先用个方框代替
    
    UILabel *_cartoonBoy;
    _cartoonBoy = [[UILabel alloc]initWithFrame:CGRectMake(60, 30, 100, 60)];
    _cartoonBoy.backgroundColor = [UIColor whiteColor];
    [mainViewPicture addSubview:_cartoonBoy];
    
    //做一个宣传的标语
    UILabel *_adText;
    _adText = [[UILabel alloc]initWithFrame:CGRectMake(160, 20, 100, 70)];
    _adText.text = @"Together!";
    _adText.font = [UIFont boldSystemFontOfSize:10];
    _adText.textColor = [UIColor purpleColor];
    _adText.adjustsFontSizeToFitWidth = YES;
    // _adText.textAlignment =  (居中文字，怎么做来着？）囧
    _adText.textAlignment = NSTextAlignmentCenter;
    [mainViewPicture addSubview:_adText];
    
    //发起人label
    UILabel *_hosted;
    _hosted = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 60, 40)];
    _hosted.text = @"小胡子";
    _hosted.font = [UIFont boldSystemFontOfSize:13];
    _hosted.textAlignment = NSTextAlignmentCenter;
    _hosted.adjustsFontSizeToFitWidth = YES;
    _hosted.textColor = [UIColor orangeColor];
    [_mainFrameView addSubview:_hosted];
    //还缺少文字大小、文字位置、字体、排列方式，等等好多功能
    
    //目的Label
    UILabel *_goldLabel;
    _goldLabel = [[UILabel alloc ]initWithFrame:CGRectMake(100,10,80,50)];
    _goldLabel.text = @"踢球！";
    _goldLabel.font = [UIFont boldSystemFontOfSize:35];
    _goldLabel.textAlignment = NSTextAlignmentCenter;
    _goldLabel.adjustsFontSizeToFitWidth = YES;
    _goldLabel.textColor = [UIColor darkTextColor];
    [_mainFrameView addSubview:_goldLabel];
    
    //时间标签
    UILabel *_timingLable;
    _timingLable = [[UILabel alloc]initWithFrame:CGRectMake(210, 10, 60, 100)];
    _timingLable.text = @"14:00";
    _timingLable.font = [UIFont boldSystemFontOfSize:10];
    _timingLable.textAlignment = NSTextAlignmentCenter;
    _timingLable.adjustsFontSizeToFitWidth = YES;
    //动态时间显示怎么做？囧
    _timingLable.textColor = [UIColor blueColor];
    [_mainFrameView addSubview:_timingLable];
    
    
    
    
    
    [self.view addSubview:mainViewPicture];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

@end
