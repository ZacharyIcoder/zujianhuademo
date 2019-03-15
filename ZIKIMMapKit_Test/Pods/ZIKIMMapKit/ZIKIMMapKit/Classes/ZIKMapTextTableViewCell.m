//
//  ZIKMapTextTableViewCell.m
//  MJRefresh
//
//  Created by ZIKong on 2018/1/10.
//

#import "ZIKMapTextTableViewCell.h"

@implementation ZIKMapTextTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier]) {
        self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        self.selectionStyle                = UITableViewCellSelectionStyleNone;
        self.textLabel.font                = [UIFont systemFontOfSize:16];
        self.detailTextLabel.font          = [UIFont systemFontOfSize:12];
        self.detailTextLabel.textColor     = [UIColor grayColor];
    }
    return self;
}


@end
