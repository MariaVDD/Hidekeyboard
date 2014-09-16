//
//  HidekeyboardViewController.h
//  Hidekeyboard
//
//  Created by Michael Forsberg on 9/15/14.
//  Copyright (c) 2014 Maria Vergel De Dios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HidekeyboardViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIScrollView *scrollview;
@property (strong, nonatomic) IBOutlet UITextField *txtFirst;
@property (strong, nonatomic) IBOutlet UITextField *txtSecind;
@property (strong, nonatomic) IBOutlet UITextField *txtthird;
@property (strong, nonatomic) IBOutlet UITextField *txtfourth;
@property (strong, nonatomic) IBOutlet UITextField *txtfifth;


-(IBAction) doneEditing:(id) sender;

@end