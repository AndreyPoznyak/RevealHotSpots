//
//  RevealHotSpotsViewController.m
//  RevealHotSpots
//
//  Created by Andrey Poznyak on 3/13/12.
//  Copyright (c) 2012 bsuir. All rights reserved.
//

#import "RevealHotSpotsViewController.h"
#import "HappinessViewController.h"
#import "ListTableViewController.h"

@implementation RevealHotSpotsViewController


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"Show Smile"])
    {
        [segue.destinationViewController setHappiness:100];
    } else if([segue.identifier isEqualToString:@"Show List"])
    {
        NSArray *temp = [NSArray arrayWithObjects:@"1", @"2", @"3", nil];
        [segue.destinationViewController setListOfHotSpots:temp];
    }
}

//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Release any cached data, images, etc that aren't in use.
//}
//
//#pragma mark - View lifecycle
//
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	// Do any additional setup after loading the view, typically from a nib.
//}
//
//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    // Release any retained subviews of the main view.
//    // e.g. self.myOutlet = nil;
//}
//
//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//}
//
//- (void)viewDidAppear:(BOOL)animated
//{
//    [super viewDidAppear:animated];
//}
//
//- (void)viewWillDisappear:(BOOL)animated
//{
//	[super viewWillDisappear:animated];
//}
//
//- (void)viewDidDisappear:(BOOL)animated
//{
//	[super viewDidDisappear:animated];
//}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

@end
