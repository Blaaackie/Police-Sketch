//
//  FacePhotos.h
//  PoliceSketch
//
//  Created by Tye Blackie on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FacePhotos : NSObject

@property (nonatomic, assign) NSUInteger eyeIndex;
@property (nonatomic, assign) NSUInteger noseIndex;
@property (nonatomic, assign) NSUInteger mouthIndex;

+(NSArray*) eyePictures;
+(NSArray*) nosePictures;
+(NSArray*) mouthPictures;

-(UIImage*) eyeSelectorRight;
-(UIImage*) eyeSelectorLeft;
-(UIImage*) noseSelectorRight;
-(UIImage*) noseSelectorLeft;
-(UIImage*) mouthSelectorRight;
-(UIImage*) mouthSelectorLeft;

//-(UIImage*) noseSelectorRight;
//-(UIImage*) noseSelectorLeft;
//
//-(UIImage*) mouthSelectorRight;
//-(UIImage*) mouthSelectorLeft;

@end
