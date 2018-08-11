//
//  Calculos.m
//  Convertemperature
//
//  Created by SAMUEL on 11/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "Calculos.h"

@interface Calculos ()

@end

@implementation Calculos 
+ (NSString *)calcular:(NSInteger)tipo :(double)valor{
    NSString *retorno;
    switch (tipo) {
        case 0: // fahrenheit
            // T(°F) = T(°C) × 9/5 + 32
            retorno = [NSString stringWithFormat:@"%f °F", (valor*9/5+32)];
            break;
        case 1: // Celsius
            // T(°C) = (T(°F) - 32) × 5/9
            retorno = [NSString stringWithFormat:@"%f °C", ((valor-32)*9/5)];
            break;
        default:
            retorno = @"";
            break;
    }
    return retorno;
}
@end
