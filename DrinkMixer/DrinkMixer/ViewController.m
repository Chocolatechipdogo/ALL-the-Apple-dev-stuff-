//
//  ViewController.m
//  DrinkMixer
//
//  Created by csuftitan on 2/13/23.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITableView *tableView;

NSArray *drinks;
@end

@implementation ViewController

@synthesize tableView = tableView;


drinks = [[NSArray alloc] initWithObject: @"Firecracker", nil];

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    return 0;
}
    
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdnetifier = @"TableViewCell"
}

UITableViewCell *tbc = [tableView dequeueResuableCellWithIdentifiter]


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
