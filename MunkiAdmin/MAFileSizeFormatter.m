//
//  MAFileSizeFormatter.m
//  MunkiAdmin
//
//  Created by Juutilainen Hannes on 28.2.2012.
//

#import "MAFileSizeFormatter.h"


@implementation MAFileSizeFormatter

- (NSString *)stringForObjectValue:(id)anObject {
    if (![anObject isKindOfClass:[NSNumber class]]) {
        return nil;
    }
    
    double bytes = [anObject doubleValue];
    NSArray *suffix = [NSArray arrayWithObjects:@"B", @"KB", @"MB", @"GB", @"TB", nil];
	NSUInteger i = 1;
	while(bytes > 1024)
	{
		bytes = bytes/1024.0;
		i++;
	}
    
    NSNumberFormatter* formatter = [[NSNumberFormatter alloc] init];
    [formatter setMaximumFractionDigits:1];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle]; // Uses localized number formats.
    [formatter setAlwaysShowsDecimalSeparator:NO];
    
    NSString *sizeInUnits = [formatter stringFromNumber:[NSNumber numberWithDouble:bytes]];
    
    return [NSString stringWithFormat:@"%@ %@", sizeInUnits, [suffix objectAtIndex:i]];
}

- (BOOL)getObjectValue:(id *)obj forString:(NSString *)string errorDescription:(NSString  **)error {
    /*
    float floatResult;
    NSScanner *scanner;
    BOOL returnValue = NO;
    
    scanner = [NSScanner scannerWithString: string];
    [scanner scanString: @"$" intoString: NULL];    //ignore  return value
    if ([scanner scanFloat:&floatResult] && ([scanner isAtEnd])) {
        returnValue = YES;
        if (obj)
            *obj = [NSNumber numberWithFloat:floatResult];
    } else {
        if (error)
            *error = NSLocalizedString(@"Couldn’t convert  to float", @"Error converting");
    }
    return returnValue;
     */
    return [super getObjectValue:obj forString:string errorDescription:error];
}


@end
