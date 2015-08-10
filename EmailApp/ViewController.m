//
//  ViewController.m
//  EmailApp
//
//  Created by Emanuel Andrade on 10/08/15.
//  Copyright (c) 2015 Emanuel Andrade. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Code to handle the image
    self.image = [[UIImage alloc]init];
    self.image = [UIImage imageNamed:@"image"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)send:(id)sender
{
    if([MFMailComposeViewController canSendMail])
    {
         NSData *imageData = [NSData dataWithData:UIImageJPEGRepresentation(self.image, 0.5)];
    
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"Sample Subject"];
        [mail setToRecipients:@[@"testingEmail@testing.com"]];
        [mail setMessageBody:@"Here is where I put my email text" isHTML:NO];
        
        // The Next line of code was added to attach the image
        
        [mail addAttachmentData:imageData mimeType:@"image/png" fileName:[NSString stringWithFormat:@"Mushroom2.png"]];
                                                                           
                                                                           
        [self presentViewController:mail animated:YES completion:nil];
    }else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"ERROR" message:@"This device cannot send email" delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
        [alert show];
    }
}

@end
