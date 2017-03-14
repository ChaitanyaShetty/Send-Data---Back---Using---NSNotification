//
//  ViewController2.m
//  Send Data Back Using NSNotification
//
//  Created by test on 3/10/17.
//  Copyright © 2017 com.neorays. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
{
    NSDictionary *dict;
}

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)done:(id)sender {
    
    dict = [NSDictionary dictionaryWithObject:self.tf.text forKey:@"send"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"name" object:nil userInfo:dict];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
