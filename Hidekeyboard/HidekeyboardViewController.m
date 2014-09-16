//
//  HidekeyboardViewController.m
//  Hidekeyboard
//
//  Created by Michael Forsberg on 9/15/14.
//  Copyright (c) 2014 Maria Vergel De Dios. All rights reserved.
//

#import "HidekeyboardViewController.h"

@interface HidekeyboardViewController ()

@end

@implementation HidekeyboardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // Do any additional setup after loading the view, typically from a nib.
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    CGSize size = [self getScreenSize];
    self.scrollview.frame = CGRectMake(0, 50, size.width, size.height);
    //[self.Scrollview  setContentSize:CGSizeMake(320, 1064)];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard {
    // add textfields and textviews
    //[Nameofoutletlikeatextfield resignFirstResponder];
    [self.txtFirst resignFirstResponder];
    [self.txtSecind resignFirstResponder];
    [self.txtthird resignFirstResponder];
    [self.txtfourth resignFirstResponder];
     [self.txtfifth resignFirstResponder];
    
}


-(IBAction) doneEditing:(id) sender {
    [sender resignFirstResponder];
}
- (CGSize)getScreenSize
{
    //Get Screen size
    CGSize size;
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height > [[UIScreen mainScreen] bounds].size.width) {
        // in Landscape mode, width always higher than height
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else if (UIInterfaceOrientationIsPortrait([UIApplication sharedApplication].statusBarOrientation) && [[UIScreen mainScreen] bounds].size.height < [[UIScreen mainScreen] bounds].size.width) {
        // in Portrait mode, height always higher than width
        size.width = [[UIScreen mainScreen] bounds].size.height;
        size.height = [[UIScreen mainScreen] bounds].size.width;
    } else {
        // otherwise it is normal
        size.height = [[UIScreen mainScreen] bounds].size.height;
        size.width = [[UIScreen mainScreen] bounds].size.width;
    }
    return size;
}

@end
