//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "FacePhotos.h"
@interface LPSViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *currentEyeImage;
@property (weak, nonatomic) IBOutlet UIImageView *currentNoseImage;
@property (weak, nonatomic) IBOutlet UIImageView *currentMouthImage;

@property (nonatomic, strong) FacePhotos *facePhotos;


@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.facePhotos = [[FacePhotos alloc] init];

    
    // Here is where you will create the buttons & image views and add them to the view.
}


- (IBAction)eyeButtonLeft:(id)sender {
    UIImage *eye = [self.facePhotos eyeSelectorLeft];
    self.currentEyeImage.image = eye;
}

- (IBAction)eyeButtonRight:(id)sender {
    UIImage *eye = [self.facePhotos eyeSelectorRight];
    self.currentEyeImage.image = eye;
}

- (IBAction)noseButtonLeft:(id)sender {
    UIImage *nose = [self.facePhotos noseSelectorLeft];
    self.currentNoseImage.image = nose;
}

- (IBAction)noseButtonRight:(id)sender {
    UIImage *nose = [self.facePhotos noseSelectorRight];
    self.currentNoseImage.image = nose;
}

- (IBAction)mouthButtonLeft:(id)sender {
    UIImage *mouth = [self.facePhotos mouthSelectorLeft];
    self.currentMouthImage.image = mouth;
}

- (IBAction)mouthButtonRight:(id)sender {
    UIImage *mouth = [self.facePhotos mouthSelectorRight];
    self.currentMouthImage.image = mouth;
}


@end
