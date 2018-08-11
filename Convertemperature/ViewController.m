//
//  ViewController.m
//  Convertemperature
//
//  Created by SAMUEL on 11/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ViewController.h"
#import "Calculos.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtTemperatra;
@property (weak, nonatomic) IBOutlet UILabel *lblTempertura;
@property (weak, nonatomic) IBOutlet UILabel *lblResultado;
@property NSInteger segmentSelect;
@end

@implementation ViewController
- (IBAction)segmentTemperature:(UISegmentedControl *)sender {
    _segmentSelect = sender.selectedSegmentIndex;
    _lblTempertura.text =(_segmentSelect==0)?@"°C":@"°F";
}

- (IBAction)btnCalclar:(UIButton *)sender {
    _lblResultado.text= [Calculos calcular:_segmentSelect :[_txtTemperatra.text floatValue]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _segmentSelect=0;
    _lblTempertura.text=@"°F";
    _txtTemperatra.text=@"0";
    _lblResultado.text= [Calculos calcular:_segmentSelect :[_txtTemperatra.text floatValue]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
