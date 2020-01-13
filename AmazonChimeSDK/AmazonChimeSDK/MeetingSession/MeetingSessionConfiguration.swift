//
//  MeetingSessionConfiguration.swift
//  AmazonChimeSDK
//
//  Created by Wang, Haoran on 1/9/20.
//  Copyright © 2020 Amazon Chime. All rights reserved.
//

import Foundation

public class MeetingSessionConfiguration {
    var meetingId: String
    var credentials: MeetingSessionCredentials
    var urls: MeetingSessionURLs

    public init(createMeetingResponse: CreateMeetingResponse, createAttendeeResponse: CreateAttendeeResponse) {
        self.meetingId = createMeetingResponse.meeting.meetingId
        self.credentials = MeetingSessionCredentials(attendeeId: createAttendeeResponse.attendee.attendeeId,
                                                     joinToken: createAttendeeResponse.attendee.joinToken)
        self.urls = MeetingSessionURLs(audioHostURL: createMeetingResponse.meeting.mediaPlacement.audioHostUrl)
    }
}
