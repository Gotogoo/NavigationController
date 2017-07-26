//
//  ViewController.m
//  NavigationController
//
//  Created by Facheng Liang  on 26/07/2017.
//  Copyright © 2017 Facheng Liang . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSString *msg = self.textField.text;
    UIViewController *secondPage = segue.destinationViewController;
    if([secondPage respondsToSelector:@selector(setData:)]){
        [secondPage setValue:msg forKey:@"data"];
    }
    
}


@end
