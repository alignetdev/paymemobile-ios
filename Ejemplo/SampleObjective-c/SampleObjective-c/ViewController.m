//
//  ViewController.m
//  SampleObjective-c
//
//  Created by Miguel Angel on 11/27/18.
//  Copyright © 2018 Miguel Tomairo. All rights reserved.
//

#import "ViewController.h"
#import <Payme/Payme.h>

@interface ViewController ()<PaymeMobileDelegate>

@property (weak, nonatomic) IBOutlet UITextField *settingIdentifier;
@property (weak, nonatomic) IBOutlet UITextField *settingLocale;
@property (weak, nonatomic) IBOutlet UITextField *settingBrands;
@property (weak, nonatomic) IBOutlet UITextField *operationNumber;
@property (weak, nonatomic) IBOutlet UITextField *operationAmount;
@property (weak, nonatomic) IBOutlet UITextField *operationCurrencyCode;
@property (weak, nonatomic) IBOutlet UITextField *operationCurrencySymbol;
@property (weak, nonatomic) IBOutlet UITextField *operationProduct;
@property (weak, nonatomic) IBOutlet UITextField *featuresWalletUserCode;
@property (weak, nonatomic) IBOutlet UITextField *featuresPlanQuota;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    setEnviroment = EnviromentDevelopment;
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self setDefaultFieldsData];
}

- (void)setDefaultFieldsData {
    
    NSString *operationNumberStr = [self randomNumberWith:6];
    
    self.settingLocale.text = @"es_PE";
    self.settingIdentifier.text = @"8204";
    self.settingBrands.text = @"VISA,AMEX,DINC,BCRI,TJRI,CMR,MSCD";
    self.operationNumber.text = operationNumberStr;
    self.operationAmount.text = @"99.55";
    self.operationCurrencyCode.text = @"PEN";
    self.operationCurrencySymbol.text = @"S/.";
    self.operationProduct.text = @"Televisor";
    self.featuresWalletUserCode.text = @"mtomairo";
    self.featuresPlanQuota.text = @"1";
    
    [self.operationNumber setKeyboardType: UIKeyboardTypeNumberPad];
    [self.operationAmount setKeyboardType: UIKeyboardTypeDecimalPad];
    [self.featuresPlanQuota setKeyboardType: UIKeyboardTypeNumberPad];
    [self.settingIdentifier setKeyboardType: UIKeyboardTypeNumberPad];
}

-(NSString *)randomNumberWith:(NSInteger)length {
    
    NSMutableString *returnString = [NSMutableString stringWithCapacity:length];
    NSString *numbers = @"0123456789";
    
    // First number cannot be 0
    [returnString appendFormat:@"%C", [numbers characterAtIndex:(arc4random() % ([numbers length]-1))+1]];
    
    for (int i = 1; i < length; i++)
    {
        [returnString appendFormat:@"%C", [numbers characterAtIndex:arc4random() % [numbers length]]];
    }
    
    return returnString;
}

#pragma mark - Action

- (IBAction)btnStartProcessPayment:(UIButton *)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainPaymeApi" bundle: [NSBundle bundleForClass:[PayController class]]];
    PayController *vc = [sb instantiateViewControllerWithIdentifier:@"PayController"];
    vc.paymeProtocol = self;
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - PaymeMobileDelegate method

@synthesize setEnviroment;

- (void)getResponsePayWithResponse:(ModelPayment * _Nullable)response {
    
    if (response != NULL) {
        NSLog(@"Response: %@",response);
    }else {
        NSLog(@"Response: another error");
    }
}

- (ModelMerchant * _Nonnull)setParamsMerchant {
    
    ModelMerchantDataOperationCurrency *currency = [[ModelMerchantDataOperationCurrency alloc] initWithCode: self.operationCurrencyCode.text
                                                                                                     symbol: self.operationCurrencySymbol.text];
    
    ModelMerchantDataOperation *modelMerchantDataOperation = [[ModelMerchantDataOperation alloc] initWithOperationNumber:self.operationNumber.text
                                                                                                                  amount:self.operationAmount.text
                                                                                                                currency:currency
                                                                                                      productDescription:self.operationProduct.text];
    
    ModelMerchantDataPerson *modelMerchantDataPerson = [[ModelMerchantDataPerson alloc] initWithFirstName:@"Miguel Angel"
                                                                                                 lastName:@"Tomairo"
                                                                                                    email:@"miguel.tomairo@alignet.com"
                                                                                                  address:@"casimiro ulloa 333"
                                                                                                      zip:@"000"
                                                                                                     city:@"Lima"
                                                                                                    state:@"Lima"
                                                                                                  country:@"Peru"
                                                                                                    phone:@"990380090"];
    
    ModelMerchantData *modelMerchantData = [[ModelMerchantData alloc] initWithOperation: modelMerchantDataOperation
                                                                               shipping: modelMerchantDataPerson
                                                                                billing: modelMerchantDataPerson
                                                                               customer: modelMerchantDataPerson
                                                                              signature: @""];
    
    ModelMerchantSettings *modelMerchantSettings = [[ModelMerchantSettings alloc] initWithLocale:self.settingLocale.text
                                                                                      identifier:self.settingIdentifier.text
                                                                                          brands:[self.settingBrands.text componentsSeparatedByString:@","]
                                                                                    signatureKey:@"SYbpPEwdKxErVzt@66458456"];
    
    ModelMerchantFeaturesWallet *modelMerchantFeaturesWallet = [[ModelMerchantFeaturesWallet alloc] initWithUserCommerce:self.featuresWalletUserCode.text];
    
    ModelMerchantFeaturesReserved *reserved1 = [[ModelMerchantFeaturesReserved alloc] initWithName:@"reserved1"
                                                                                             value:@"1"];
    ModelMerchantFeaturesReserved *reserved2 = [[ModelMerchantFeaturesReserved alloc] initWithName:@"reserved2"
                                                                                             value:@"2"];
    ModelMerchantFeaturesReserved *reserved3 = [[ModelMerchantFeaturesReserved alloc] initWithName:@"reserved3"
                                                                                             value:@"3"];
    
    NSArray *reservedArray = @[reserved1, reserved2, reserved3];
    
    ModelMerchantFeatures *modelMerchantFeatures = [[ModelMerchantFeatures alloc] initWithWallet:modelMerchantFeaturesWallet
                                                                                        reserved:reservedArray
                                                                                       planQuota:false];
    
    
    ModelMerchant *merchant = [[ModelMerchant alloc] initWithData: modelMerchantData settings: modelMerchantSettings features: modelMerchantFeatures];
    
    
    return merchant;
}

@end
