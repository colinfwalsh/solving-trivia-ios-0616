//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


-(NSString *)solveTrivia;{

    
    NSDictionary* stateAndCapital = @{@"Alabama":@"Montgomery", @"Alaska":@"Juneau", @"Arizona":@"Phoenix", @"Arkansas":@"Little Rock", @"California":@"Sacramento", @"Colorodo": @"Denver", @"Conneticut":@"Hartford", @"Delaware":@"Dover", @"Florida": @"Tallahassee", @"Georgia":@"Atlanta", @"Hawaii":@"Honolulu", @"Idaho":@"Boise", @"Illinois":@"Springfield", @"Indiana":@"Indianapolis", @"Iowa":@"Des Moines", @"Kansas":@"Topeka", @"Kentucky":@"Frankfort", @"Louisiana": @"Baton Rouge", @"Maine":@"Augusta", @"Maryland":@"Annapolis", @"Massachusets":@"Boston", @"Michigan":@"Lansing", @"Minnesota":@"Saint Paul", @"Mississippi":@"Jackson", @"Missouri":@"Jefferson City", @"Montana":@"Helena", @"Nebraska":@"Lincoln", @"Nevada":@"Carson city", @"New Hampshire":@"Concord", @"New Jersey": @"Trenton", @"New Mexico":@"Santa Fe", @"New York":@"Albany", @"North Carolina":@"Raleigh", @"North Dakota":@"Bismark",@"Ohio":@"Columbus", @"Oklahoma":@"Oklahoma City", @"Oregon":@"Salem", @"Pennsylvania":@"Harrisburg", @"Rhode Island":@"Providence", @"South Carolina":@"Columbia", @"South Dakota":@"Pierre", @"Tennessee":@"Nashville", @"Texas":@"Austin", @"Utah":@"Salt Lake City", @"Vermont":@"Montpelier", @"Virginia":@"Richmond", @"Washington":@"Olympia", @"West Virginia":@"Charleston", @"Wisconsin":@"Madison", @"Wyoming":@"Cheyenne"};
    
    NSMutableString* solution = [[NSMutableString alloc]init];
    
    for (NSString *capital in stateAndCapital) {
        NSCharacterSet* capitalCharacter = [NSCharacterSet characterSetWithCharactersInString:[stateAndCapital[capital] lowercaseString]];
        
        if ([[capital lowercaseString] rangeOfCharacterFromSet:capitalCharacter options:NSCaseInsensitiveSearch].location == NSNotFound) {
            [solution appendString:capital];
        }
        
    }
    
    return solution;
 }
 

@end
