//
//  MCSlider.h
//  
//
//  Created by Mateus Campos on 02/10/15.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol MCSliderHandlerDelegate <NSObject>

@optional

/**
 *  Responds to it's owner the slider value
 *
 *  @param value slider value
 */
- (void)sliderChangedToValue:(float)value;

@end

@interface MCSlider : NSObject

@property (nonatomic, weak) id<MCSliderHandlerDelegate> delegate;

/**
 *  Moves slider value 1 by 1 (integer)
 *
 *  @param slider slider to change
 */
- (void)milestoneSlider:(UISlider *)slider;

/**
 *  Singleton
 *
 *  @return Singleton Instance
 */
+ (instancetype)sharedInstance;

@end
