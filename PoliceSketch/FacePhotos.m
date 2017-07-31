//
//  FacePhotos.m
//  PoliceSketch
//
//  Created by Tye Blackie on 2017-07-31.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "FacePhotos.h"

@implementation FacePhotos

+(NSArray*) eyePictures{
    return @[[UIImage imageNamed:@"eyes_1.jpg"],
             [UIImage imageNamed:@"eyes_2.jpg"],
             [UIImage imageNamed:@"eyes_3.jpg"],
             [UIImage imageNamed:@"eyes_4.jpg"],
             [UIImage imageNamed:@"eyes_5.jpg"],];
}

+(NSArray*) nosePictures{
    return @[[UIImage imageNamed:@"nose_1.jpg"],
             [UIImage imageNamed:@"nose_2.jpg"],
             [UIImage imageNamed:@"nose_3.jpg"],
             [UIImage imageNamed:@"nose_4.jpg"],
             [UIImage imageNamed:@"nose_5.jpg"],];
}

+(NSArray*) mouthPictures{
    return @[[UIImage imageNamed:@"mouth_1.jpg"],
             [UIImage imageNamed:@"mouth_2.jpg"],
             [UIImage imageNamed:@"mouth_3.jpg"],
             [UIImage imageNamed:@"mouth_4.jpg"],
             [UIImage imageNamed:@"mouth_5.jpg"],];
}

-(UIImage*) eyeSelectorRight{
    
    
    if (_eyeIndex < [[FacePhotos eyePictures] count] - 1) {
        self.eyeIndex++;
    } else {
        self.eyeIndex = 0;
    }
    
    UIImage *eye = [FacePhotos eyePictures][self.eyeIndex];

    return eye;
    
}
-(UIImage*) eyeSelectorLeft{
    
    if (_eyeIndex > 0 ) {
        self.eyeIndex--;
    }else{self.eyeIndex = [[FacePhotos eyePictures] count]-1;
    }
    
        UIImage *eye = [FacePhotos eyePictures][self.eyeIndex];
        
        return eye;
}

-(UIImage*) noseSelectorRight{
    if (_noseIndex < [[FacePhotos nosePictures] count] - 1) {
        self.noseIndex++;
    } else {
        self.noseIndex = 0;
    }
    
    UIImage *nose = [FacePhotos nosePictures][self.noseIndex];
    
    return nose;

}

-(UIImage*) noseSelectorLeft{
    if (_noseIndex > 0 ) {
        self.noseIndex--;
    }else{self.noseIndex = [[FacePhotos nosePictures] count]-1;
    }
    
    UIImage *nose = [FacePhotos nosePictures][self.noseIndex];
    
    return nose;
    
}

-(UIImage*) mouthSelectorRight{
    if (_mouthIndex < [[FacePhotos mouthPictures] count] - 1) {
        self.mouthIndex++;
    } else {
        self.mouthIndex = 0;
    }
    
    UIImage *mouth = [FacePhotos mouthPictures][self.mouthIndex];
    
    return mouth;
    
}

-(UIImage*) mouthSelectorLeft{
    if (_mouthIndex > 0 ) {
        self.mouthIndex--;
    }else{self.mouthIndex = [[FacePhotos mouthPictures] count]-1;
    }
    
    UIImage *mouth = [FacePhotos mouthPictures][self.mouthIndex];
    
    return mouth;
    
}

@end
