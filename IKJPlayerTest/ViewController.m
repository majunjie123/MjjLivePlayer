//
//  ViewController.m
//  IKJPlayerTest
//
//  Created by majunjie on 16/6/28.
//  Copyright © 2016年 majunjie. All rights reserved.
//

#import "ViewController.h"
#import "MJJPlayView.h"

@interface ViewController ()<MJJPlayerDelegate>{
    
    MJJPlayView *_playView;
}

@property(atomic, strong) NSURL *url;
@property(atomic, retain) id<IJKMediaPlayback> player;
@property (nonatomic , strong) UIView *_toolView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.url = [NSURL URLWithString:@"rtmp://live.hkstv.hk.lxdns.com/live/hks"];
//
//    
//    _player = [[IJKFFMoviePlayerController alloc] initWithContentURL:self.url
//                                                         withOptions:nil];
    
//    _playView=[[MJJPlayView alloc]initPlayViewWithFrame:CGRectMake(0, 0,[[UIScreen mainScreen] bounds].size.width, 240) WithPlayer:_player];
//    
//    _playView.delegate = self;
//    _playView.MJJPlayerUrl = @"rtmp://live.hkstv.hk.lxdns.com/live/hks";
//    [self.view addSubview:_playView];
    
    _playView = [[MJJPlayView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 300)];
    _playView.delegate = self;
    _playView.MJJPlayerUrl = @"rtmp://live.hkstv.hk.lxdns.com/live/hks";
    [self.view addSubview:_playView];


    //http://hls.yy.com/newlive/92094861_2450367234.m3u8?org=huya&appid=0&uuid=065bec755acb41a1bfe453bac5d6c57d&t=1472356242&tk=bc6c38373e348448d1727599c3a50f39&uid=0&ex_channelid=22024&ex_spkuid=10895178


      //设置是播放界面否充满屏幕
//      [_playView setScalingMode:IJKMPMovieScalingModeAspectFill];
    
    
    [_playView prepareTo];

    [_playView play];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
