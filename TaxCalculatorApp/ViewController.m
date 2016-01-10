//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by Kanybek Zhagusaev on 1/8/16.
//  Copyright © 2016 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property double caTax;
@property double chiTax;
@property double nyTax;

@end

@implementation ViewController

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    NSString *enteredText = self.priceTextField.text;
   double enteredValue = enteredText.intValue;
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    
    }else {
        
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
        
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.caTax = .075;
    self.chiTax = .0925;
    self.nyTax = .045;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
