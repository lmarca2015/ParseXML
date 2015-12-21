//
//  ViewController.m
//  ParseXML
//
//  Created by Procesos on 18/12/15.
//  Copyright © 2015 PMP. All rights reserved.
//

#import "ViewController.h"
#import "SYSoapClient.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    SYSoapClient *soapClient = [SYSoapClient new];
    
    /*[soapClient callSoapServiceWithoutParameters__functionName:@"" callback:^(id o, BOOL b) {
     
     }];*/
    
    NSMutableArray *tags = [[NSMutableArray alloc] initWithObjects:@"Data", nil];
    NSMutableArray *vars = [[NSMutableArray alloc] initWithObjects:@"nom=luis|ape=marca", nil];
    
    [soapClient callSoapServiceWithParameters__functionName:@"Afiliacion" tags:tags vars:vars callback:^(NSDictionary *result, BOOL response) {
        NSLog(@"ddd");
    }];
    
//    [soapClient callSoapServiceWithoutParameters__functionName:@"GetContainer" callback:^(NSDictionary *result, BOOL success) {
//        NSLog(@"");
//    }];
//    
//    [soapClient callSoapServiceWithoutParameters__functionName:@"GetContainer" callback:^(NSDictionary *result, BOOL response) {
//        NSLog(@"");
//    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
