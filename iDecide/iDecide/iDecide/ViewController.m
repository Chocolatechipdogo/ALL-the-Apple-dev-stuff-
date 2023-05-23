//
//  ViewController.m
//  iDecide
//
//  Created by csuftitan on 1/30/23.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *DesicionText;
@end

@implementation ViewController
@synthesize DesicionText=decisionText;
- (IBAction)buttonPressed:(UIButton *)sender {
    [decisionText setTitle: @"Go for it!" forState:UIControlStateNormal];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}


@end
