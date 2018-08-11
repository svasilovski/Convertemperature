//
//  TemperatureController.m
//  Convertemperature
//
//  Created by SAMUEL on 11/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "TemperatureController.h"
#import "Calculos.h"

@interface TemperatureController ()
@property (weak, nonatomic) IBOutlet UILabel *lblResultado;
@property NSInteger segmentSelect;
@property (weak, nonatomic) IBOutlet UISlider *sliderTemperatura;
@end

@implementation TemperatureController
- (IBAction)segmentTemperatura:(UISegmentedControl *)sender {
    _segmentSelect = sender.selectedSegmentIndex;
    _lblResultado.text= [Calculos calcular:_segmentSelect :_sliderTemperatura.value];
}

- (IBAction)sliderConversion:(UISlider *)sender {
    _lblResultado.text= [Calculos calcular:_segmentSelect :sender.value];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _segmentSelect= 0;
    _lblResultado.text= [Calculos calcular:_segmentSelect :_sliderTemperatura.value];
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

@end
