//
//  ViewController.m
//  TapGestureRecognizer
//
//  Created by Kurup, Vishal on 7/12/13.
//  Copyright (c) 2013 conkave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Instantiate our UITapGestureRecognizer
    UITapGestureRecognizer * tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapResponder:)];
    
    //Set the number of taps needed for the gesture to be recognized
    tapRecognizer.numberOfTapsRequired = 2;
    
    //Set the number of fingers that need to be on the screen for
    //the gesture to be recognized
    tapRecognizer.numberOfTouchesRequired = 1;
    
    //Add the gesture recognizer to our view
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tapResponder: (UITapGestureRecognizer *) sender
{
    NSLog(@"Double tap detected");
}

@end
