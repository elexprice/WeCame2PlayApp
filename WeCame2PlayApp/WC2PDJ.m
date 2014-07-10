//
//  WC2PDJ.m
//  WeCame2PlayApp
//
//  Created by IE Mixes on 4/8/14.
//  Copyright (c) 2014 wecame2play.com. All rights reserved.
//

#import "WC2PDJ.h"

@implementation WC2PDJ


// Designated Initializer
-(instancetype)initWithdjName:(NSString *)name
                 djButtonImage:(UIImage *)buttonImage
                       djImage:(UIImage *)image
                           bio:(NSString *)bio
                 djFaceBookURL:(NSURL *)faceBookURL
                djInstagramURL: (NSURL *)instagramURL
                  djTwitterURL:(NSURL *)twitterURL
                        djURLs:(NSArray *)URLs
                     djWebsite:(NSURL *)website
{
    // call superclass's dessignated initializer
    self = [super init];
    
    // Did the superclass's desigmated initilaizer succeed?
    if (self){
        
        // give instance variables initial values
        _djName = name;
        _djButtonImage = buttonImage;
        _djImage = image;
        _djBio = bio;
        _djFacebookURL = faceBookURL;
        _djInsagramURL = instagramURL;
        _djTwitterURL = twitterURL;
        _djURLs = URLs;
        _djWebsite = website;
        
    }
    
    // returns the address of the newly instantiated object
    return self;
}

+(NSArray *)djs
{
    
    // DJ Button Images
    UIImage *djFreezeButtonImage = [UIImage imageNamed:@"Freeze Button.jpg"];
    UIImage *djIEButtonImage = [UIImage imageNamed:@"IE Button.jpg"];
    UIImage *djUPDButtonImage = [UIImage imageNamed:@"UPD Button.jpg"];
    
    // DJ Images
    UIImage *djFreezeImage = [UIImage imageNamed:@"dj freeze image.png"];
    UIImage *djIEImage = [UIImage imageNamed:@"dj ie image.png"];
    UIImage *djUPDImage = [UIImage imageNamed:@"dj upd image.png"];
    
    // DJ Bios
    NSString *djFreezeBio = @"DJ Freeze \n\nTwitter: @DJ_Freeze_i20 \nFaceBook: DJ Freeze \n\nDJ Freeze’s unique style of mixing diverse genres of music has prompted him regional acclaim and guest appearances at some of the hottest venues across the U.S. His hard work is paying off for him since starting in the industry as a sophomore at Jackson State University in 1999. In over a decade of hard work, he has owned a few accomplishments namely being awarded the First Ever Jack Daniel’s and Crown Royal DJ for the State of Mississippi. These titles earned him opportunities to spin at major events throughout the south. \n\nFreeze has performed among a wide array of audiences as a special guest DJ which shows at concert and parties he rocks for a wide range of celebrities including UGK, 8-Ball and MJG, Fantasia, Robin Thicke, Monica, Musiq Soulchild, Jahiem, Too Short, and Scarface to name a few.  \n\nA Jackson, Mississippi native he resides in Dallas, Texas and is quickly becoming a local favorite among a Who’s Who List of club promoters, club owners, radio personalities, and others in North Texas. He performs weekly at the hottest venues and has been a featured DJ at NBA All Star Weekend 2012 (Dallas), NFL Super Bowl XLV Weekend (Dallas) , and the Urban Oasis 2012 in Cabo San Lucas, Mexico.  \n\nHis company Freeze Entertainment Inc. is a new brand under R&R Entertainment Management that is thriving and continues to grow and will be a mainstay for years to come.";
    
    NSString *djIEBio = @"DJ IE \n\nWebSite: www.iemixes.com  \n\nTwitter: @iemixes  \n\nYouTube: www.youtube.com/iemuzik  \n\nJSU: Class of 2003 Computer Science Major  \n\nWhen it comes to entertainment DJ I.E. has many roles be it DJ, Artist, Producer, or Promoter. Coming from the north side of Jackson, MS he has hustled his way around all avenues of the entertainment business. With a passion for music DJ I.E. started DJing and promoting his own parties while attending Callway High School. While attending Jackson State University, DJ I.E. met 5 fellow students and formed The Mississippi Collegiate Connection. They were known for having the biggest and best parties in the state of Mississippi. In 2003, the M.C.C. separated and I.E. and fellow member DJ Unpredictable joined together and continued to promote parties. Not only were they doing parties, they were DJing various events around the south.  \n\nBy being a DJ, DJ I.E. felt that he knew what it took to move a crowd. So in 2000 I.E. started to mess around with music production. He also began to rhyme. What began as a simple hobby quickly turned into a serious business. In no time DJ I.E. was producing for several Rap acts around the city.  \n\nIn 2004 DJ I.E. received the opportunity to tour with Lil Flip. He had an up close view of the music industry. While working with Lil Flip he was able to produce several projects. One in particular was The Kings of the South album by Lil Flip and Z-Ro. DJ I.E. also produced Don’t Cry on Lil Wayne’s The Suffix mixtape. He has also done various productions for other Rap artist in Mississippi such as Lil C, Boo, Smoke-D, S. Fresh, Jewman, Young Shad, Antezy, Frank Da Macka, Chyna Boy, Queen Boyz, and many more.  \n\nIn 2007 DJ I.E. moved to Dallas, Texas where he has continued to grow his passion for DJing. DJ I.E. currently DJs at multiple venues around the Dallas-Fort Worth area.";
    
    NSString *djUPDBio = @"DJ Unpredictable  \n\nWebsite: www.DJUnpredictable.com  \n\nTwitter: @djunpredictable  \n\nJSU: Class of 2003 Speech Communications Major \n\nMore than a DJ…  \n\nBut a Host & Speaker. DJ Unpredictable realized early on while attending Provine High School that he wanted to be a DJ. He began his professional DJ career during his senior year of high school and later peeked while attending Jackson State University. If a party is jumping, you’ll probably find a DJ Unpredictable live indmix!   \n\nWhile at Jackson State University, he was also a drum major for “The Sonic Boom of the South” from 2000-2001.  He received his Bachelor of Arts in Speech Communication Studies from JSU and put his degree to use as an on-air personality and morning show producer on 97.7 FM as a part of the nationally syndicated Rickey Smiley Morning Show.   \n\nIn addition to his career endeavors, he is a member of the Beta Alpha Chapter of Omega Psi Phi Fraternity Incorporated.   \n\nFor DJ Unpredictable this is only the beginning…STAY TUNED!";
    
    
    // Facebook URLs
    NSURL *djFreezeFacebookURL = [NSURL URLWithString:@"https://www.facebook.com/pages/DJ-Freeze/126779156559"];
    NSURL *djIEFacebookURL = [NSURL URLWithString:@"https://www.facebook.com/iemixes"];
    NSURL *djUPDFacebookURL = [NSURL URLWithString:@"https://www.facebook.com/pages/DJ-Unpredictable-601/499828623385697"];
    
    // Insagram URLs
    NSURL *djFreezeInstagramURL = [NSURL URLWithString:@"http://instagram.com/djfreeze06/"];
    NSURL *djIEInstagramURL = [NSURL URLWithString:@"http://instagram.com/iemixes"];
    NSURL *djUPDInstagramURL = [NSURL URLWithString:@"http://instagram.com/djunpredictable601"];
    
    // TwitterURLs
    NSURL *djFreezeTwitterURL = [NSURL URLWithString:@"https://twitter.com/DJ_Freeze_I20"];
    NSURL *djIETwitterURL = [NSURL URLWithString:@"https://twitter.com/IEmixes"];
    NSURL *djUPDTwitterURL = [NSURL URLWithString:@"https://twitter.com/DJUnpredictable"];
    
    // Website URLs
    NSURL *djFreezeWebsiteURL = [NSURL URLWithString:@"https://www.facebook.com/pages/DJ-Freeze/126779156559"];
    NSURL *djIEWebsiteURL = [NSURL URLWithString:@"http://www.iemixes.com"];
    NSURL *djUPDWebsiteURL = [NSURL URLWithString:@"https://www.facebook.com/pages/DJ-Unpredictable-601-Events-Promotions/728299277182188"];
    
    // Array of URLs
    NSArray *djFreezeURLs = [NSArray arrayWithObjects:djFreezeFacebookURL, djFreezeInstagramURL, djFreezeTwitterURL, djFreezeWebsiteURL, nil];
    NSArray *djIEURLs = [NSArray arrayWithObjects:djIEFacebookURL, djIEInstagramURL, djIETwitterURL, djIEWebsiteURL, nil];
    NSArray *djUPDURLs = [NSArray arrayWithObjects:djUPDFacebookURL, djUPDInstagramURL, djUPDTwitterURL, djUPDWebsiteURL, nil];
    
    
    
    
    
    // 3 DJs
    WC2PDJ *djFreeze = [[self alloc] initWithdjName:@"DJ Freeze" djButtonImage:djFreezeButtonImage djImage:djFreezeImage bio:djFreezeBio djFaceBookURL:djFreezeFacebookURL djInstagramURL:djFreezeInstagramURL djTwitterURL:djFreezeTwitterURL djURLs:djFreezeURLs djWebsite:djFreezeWebsiteURL];
    WC2PDJ *djIE = [[self alloc] initWithdjName:@"DJ IE" djButtonImage:djIEButtonImage djImage:djIEImage bio:djIEBio djFaceBookURL:djFreezeFacebookURL djInstagramURL:djIEInstagramURL djTwitterURL:djIETwitterURL djURLs:djIEURLs djWebsite:djIEWebsiteURL];
    WC2PDJ *djUPD = [[self alloc] initWithdjName:@"DJ Unpredictable 601" djButtonImage:djUPDButtonImage djImage:djUPDImage bio:djUPDBio djFaceBookURL:djFreezeFacebookURL djInstagramURL:djUPDInstagramURL djTwitterURL:djUPDTwitterURL djURLs:djUPDURLs djWebsite:djUPDWebsiteURL];
    

    
    // DJ List
    NSArray *djs = [NSArray arrayWithObjects: djFreeze, djIE, djUPD, nil];
    
    return djs;
}

@end
