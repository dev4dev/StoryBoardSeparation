//
//  ViewController.m
//  sbTest
//
//  Created by Alex Antonyuk on 12/15/12.
//  Copyright (c) 2012 Alex Antonyuk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)showButtonTapped:(id)sender;
- (IBAction)dimissButtonTapped:(id)sender;

@end

@implementation ViewController

- (IBAction)
showButtonTapped:(id)sender
{
	UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"MainVC"];
	vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentViewController:vc animated:YES completion:nil];
}

- (IBAction)
dimissButtonTapped:(id)sender
{
	if (self.presentingViewController) {
		[self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
	} else {
		UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"😃"
														message:@"It's Root VC"
													   delegate:nil
											  cancelButtonTitle:@"OK"
											  otherButtonTitles:nil];
		[alert show];

	}
}

@end
