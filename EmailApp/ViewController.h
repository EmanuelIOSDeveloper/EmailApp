//
//  ViewController.h
//  EmailApp
//
//  Created by Emanuel Andrade on 10/08/15.
//  Copyright (c) 2015 Emanuel Andrade. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController <MFMailComposeViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *emailLabel;
@property (strong, nonatomic) UIImage *image;

-(IBAction)send:(id)sender;
@end

