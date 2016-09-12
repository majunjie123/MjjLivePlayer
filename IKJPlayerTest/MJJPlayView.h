//
//  MJJPlayView.h
//  IKJPlayerTest
//
//  Created by majunjie on 16/9/9.
//  Copyright © 2016年 majunjie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IJKMediaFramework/IJKMediaFramework.h>
@class XJGestureButton;

@protocol MJJPlayerDelegate <NSObject>
@optional
/**
 *  代理，是否全屏
 *
 *  @param flag YES：全屏，NO：不是全屏；
 */
- (void)xjPlayerFullOrSmall:(BOOL)flag;
/**
 *  代理，视屏是否暂停
 *
 *  @param flag flag YES：暂停，NO：播放；
 */
- (void)xjPlayerPlayOrPause:(BOOL)flag;
/**
 *  代理，下一个视屏（全屏的时候才有）
 */
- (void)nextXJPlayer;
@end

@interface MJJPlayView : UIView



-(id)initPlayViewWithFrame:(CGRect)frame WithPlayer:(IJKFFMoviePlayerController*)player;

-(void)setToolViewWithFrame:(CGRect)frame;

@property (nonatomic, strong) id<MJJPlayerDelegate> delegate;
/**
 *  如果自己添加菜单，建议添加到这个button上；
 */
@property (strong, nonatomic) XJGestureButton *xjGestureButton;
/**
 *  视屏链接
 */
@property (nonatomic, strong) NSString *MJJPlayerUrl;
/**
 *  如果想自己写底部菜单，可以移除我写好的菜单；然后通过接口和代理来控制视屏；
 */
- (void)removeXJplayerBottomMenu;
/**
 *  暂停
 */
- (void)pause;
/**
 *  开始
 */
- (void)play;


-(void)prepareTo;

- (void)beginDragMediaSlider;

- (void)endDragMediaSlider;
/**
 * 定位视频播放时间(根据上次存储的时间来定位播放)
 *
 * @param seconds 秒
 *
 *
 */
- (void)seekToTimeWithSeconds:(Float64)seconds;
/**
 * 取得当前播放时间
 *
 */
- (Float64)currentTime;
/**
 * 取得媒体总时长
 *
 */
- (Float64)totalTime;

@end
