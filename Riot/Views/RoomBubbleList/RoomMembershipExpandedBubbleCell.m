/*
 Copyright 2017 Vector Creations Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

#import "RoomMembershipExpandedBubbleCell.h"

#import "RiotDesignValues.h"

#import "RoomBubbleCellData.h"

NSString *const kRoomMembershipExpandedBubbleCellTapOnCollapseButton = @"kRoomMembershipExpandedBubbleCellTapOnCollapseButton";

@implementation RoomMembershipExpandedBubbleCell

- (void)awakeFromNib
{
    [super awakeFromNib];

    self.separatorView.backgroundColor = kRiotColorLightGrey;

    NSString* title = NSLocalizedStringFromTable(@"collapse", @"Vector", nil);
    [self.collapseButton setTitle:title forState:UIControlStateNormal];
    [self.collapseButton setTitle:title forState:UIControlStateHighlighted];
    [self.collapseButton setTintColor:kRiotColorGreen];
    self.collapseButton.titleLabel.font = [UIFont systemFontOfSize:14];
}

- (IBAction)onCollapseButtonTap:(id)sender
{
    if (self.delegate)
    {
        [self.delegate cell:self didRecognizeAction:kRoomMembershipExpandedBubbleCellTapOnCollapseButton userInfo:nil];
    }
}

@end