//
//  ViewController.m
//  functionsObj_C
//
//  Created by marvin evins on 5/10/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@property (nonatomic) double bankAccount;
@property (nonatomic) double itemAmount;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.bankAccount = 500.50;
    self.itemAmount = 400.50;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL) canPurchase:(double)amount  {
    
    if (self.bankAccount >= amount ){
        return YES;
    }else{
        return NO;
    }
}

-(void)  declareWinnerWithPlayerAScore: (NSInteger)scoreA playerBScore:(NSInteger) scoreB{
    if(scoreA > scoreB)
        NSLog(@"Player A wins!");
    else if (scoreB > scoreA)
        NSLog(@"player b wins");
    else
        NSLog(@"the game is at a standstill ");
}




- (void) playground{
    
    if([self canPurchase:self.itemAmount]){
        NSLog(@"WE CAN BUY");
    }
    [self declareWinnerWithPlayerAScore:55 playerBScore:66];
    
    
    Person *person = [[Person alloc]init];
    [person speakName];
    [Person stateSpecies];
    
    //one method of calling an image
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://google.com"]]];
    //or use
    NSURL *urlString = @"https://google.com";
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image2 = [UIImage imageWithData:data];
    
    
                      
    
    
}



@end
