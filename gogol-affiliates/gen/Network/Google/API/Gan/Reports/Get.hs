{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Gan.Reports.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a report of the specified type.
--
-- /See:/ <https://developers.google.com/affiliate-network/ Google Affiliate Network API Reference> for @gan.reports.get@.
module Network.Google.API.Gan.Reports.Get
    (
    -- * REST Resource
      ReportsGetAPI

    -- * Creating a Request
    , reportsGet'
    , ReportsGet'

    -- * Request Lenses
    , rgStatus
    , rgQuotaUser
    , rgPrettyPrint
    , rgUserIp
    , rgAdvertiserId
    , rgEndDate
    , rgRoleId
    , rgRole
    , rgEventType
    , rgStartDate
    , rgKey
    , rgCalculateTotals
    , rgLinkId
    , rgOauthToken
    , rgOrderId
    , rgPublisherId
    , rgReportType
    , rgStartIndex
    , rgMaxResults
    , rgFields
    , rgAlt
    ) where

import           Network.Google.Affiliates.Types
import           Network.Google.Prelude

-- | A resource alias for gan.reports.get which the
-- 'ReportsGet'' request conforms to.
type ReportsGetAPI =
     Capture "role" ReportsGet'Role :>
       Capture "roleId" Text :>
         "report" :>
           Capture "reportType" ReportsGet'ReportType :>
             QueryParam "status" ReportsGet'Status :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "advertiserId" Text :>
                       QueryParam "endDate" Text :>
                         QueryParam "eventType" ReportsGet'EventType :>
                           QueryParam "startDate" Text :>
                             QueryParam "key" Text :>
                               QueryParam "calculateTotals" Bool :>
                                 QueryParam "linkId" Text :>
                                   QueryParam "oauth_token" Text :>
                                     QueryParam "orderId" Text :>
                                       QueryParam "publisherId" Text :>
                                         QueryParam "startIndex" Word32 :>
                                           QueryParam "maxResults" Word32 :>
                                             QueryParam "fields" Text :>
                                               QueryParam "alt" Alt :>
                                                 Get '[JSON] Report

-- | Retrieves a report of the specified type.
--
-- /See:/ 'reportsGet'' smart constructor.
data ReportsGet' = ReportsGet'
    { _rgStatus          :: !(Maybe ReportsGet'Status)
    , _rgQuotaUser       :: !(Maybe Text)
    , _rgPrettyPrint     :: !Bool
    , _rgUserIp          :: !(Maybe Text)
    , _rgAdvertiserId    :: !(Maybe Text)
    , _rgEndDate         :: !(Maybe Text)
    , _rgRoleId          :: !Text
    , _rgRole            :: !ReportsGet'Role
    , _rgEventType       :: !(Maybe ReportsGet'EventType)
    , _rgStartDate       :: !(Maybe Text)
    , _rgKey             :: !(Maybe Text)
    , _rgCalculateTotals :: !(Maybe Bool)
    , _rgLinkId          :: !(Maybe Text)
    , _rgOauthToken      :: !(Maybe Text)
    , _rgOrderId         :: !(Maybe Text)
    , _rgPublisherId     :: !(Maybe Text)
    , _rgReportType      :: !ReportsGet'ReportType
    , _rgStartIndex      :: !(Maybe Word32)
    , _rgMaxResults      :: !(Maybe Word32)
    , _rgFields          :: !(Maybe Text)
    , _rgAlt             :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ReportsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rgStatus'
--
-- * 'rgQuotaUser'
--
-- * 'rgPrettyPrint'
--
-- * 'rgUserIp'
--
-- * 'rgAdvertiserId'
--
-- * 'rgEndDate'
--
-- * 'rgRoleId'
--
-- * 'rgRole'
--
-- * 'rgEventType'
--
-- * 'rgStartDate'
--
-- * 'rgKey'
--
-- * 'rgCalculateTotals'
--
-- * 'rgLinkId'
--
-- * 'rgOauthToken'
--
-- * 'rgOrderId'
--
-- * 'rgPublisherId'
--
-- * 'rgReportType'
--
-- * 'rgStartIndex'
--
-- * 'rgMaxResults'
--
-- * 'rgFields'
--
-- * 'rgAlt'
reportsGet'
    :: Text -- ^ 'roleId'
    -> ReportsGet'Role -- ^ 'role'
    -> ReportsGet'ReportType -- ^ 'reportType'
    -> ReportsGet'
reportsGet' pRgRoleId_ pRgRole_ pRgReportType_ =
    ReportsGet'
    { _rgStatus = Nothing
    , _rgQuotaUser = Nothing
    , _rgPrettyPrint = True
    , _rgUserIp = Nothing
    , _rgAdvertiserId = Nothing
    , _rgEndDate = Nothing
    , _rgRoleId = pRgRoleId_
    , _rgRole = pRgRole_
    , _rgEventType = Nothing
    , _rgStartDate = Nothing
    , _rgKey = Nothing
    , _rgCalculateTotals = Nothing
    , _rgLinkId = Nothing
    , _rgOauthToken = Nothing
    , _rgOrderId = Nothing
    , _rgPublisherId = Nothing
    , _rgReportType = pRgReportType_
    , _rgStartIndex = Nothing
    , _rgMaxResults = Nothing
    , _rgFields = Nothing
    , _rgAlt = JSON
    }

-- | Filters out all events that do not have the given status. Valid values:
-- \'active\', \'canceled\', or \'invalid\'. Optional.
rgStatus :: Lens' ReportsGet' (Maybe ReportsGet'Status)
rgStatus = lens _rgStatus (\ s a -> s{_rgStatus = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rgQuotaUser :: Lens' ReportsGet' (Maybe Text)
rgQuotaUser
  = lens _rgQuotaUser (\ s a -> s{_rgQuotaUser = a})

-- | Returns response with indentations and line breaks.
rgPrettyPrint :: Lens' ReportsGet' Bool
rgPrettyPrint
  = lens _rgPrettyPrint
      (\ s a -> s{_rgPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rgUserIp :: Lens' ReportsGet' (Maybe Text)
rgUserIp = lens _rgUserIp (\ s a -> s{_rgUserIp = a})

-- | The IDs of the advertisers to look up, if applicable.
rgAdvertiserId :: Lens' ReportsGet' (Maybe Text)
rgAdvertiserId
  = lens _rgAdvertiserId
      (\ s a -> s{_rgAdvertiserId = a})

-- | The end date (exclusive), in RFC 3339 format, for the report data to be
-- returned. Defaults to one day after startDate, if that is given, or
-- today. Optional.
rgEndDate :: Lens' ReportsGet' (Maybe Text)
rgEndDate
  = lens _rgEndDate (\ s a -> s{_rgEndDate = a})

-- | The ID of the requesting advertiser or publisher.
rgRoleId :: Lens' ReportsGet' Text
rgRoleId = lens _rgRoleId (\ s a -> s{_rgRoleId = a})

-- | The role of the requester. Valid values: \'advertisers\' or
-- \'publishers\'.
rgRole :: Lens' ReportsGet' ReportsGet'Role
rgRole = lens _rgRole (\ s a -> s{_rgRole = a})

-- | Filters out all events that are not of the given type. Valid values:
-- \'action\', \'transaction\', or \'charge\'. Optional.
rgEventType :: Lens' ReportsGet' (Maybe ReportsGet'EventType)
rgEventType
  = lens _rgEventType (\ s a -> s{_rgEventType = a})

-- | The start date (inclusive), in RFC 3339 format, for the report data to
-- be returned. Defaults to one day before endDate, if that is given, or
-- yesterday. Optional.
rgStartDate :: Lens' ReportsGet' (Maybe Text)
rgStartDate
  = lens _rgStartDate (\ s a -> s{_rgStartDate = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rgKey :: Lens' ReportsGet' (Maybe Text)
rgKey = lens _rgKey (\ s a -> s{_rgKey = a})

-- | Whether or not to calculate totals rows. Optional.
rgCalculateTotals :: Lens' ReportsGet' (Maybe Bool)
rgCalculateTotals
  = lens _rgCalculateTotals
      (\ s a -> s{_rgCalculateTotals = a})

-- | Filters to capture one of given link IDs. Optional.
rgLinkId :: Lens' ReportsGet' (Maybe Text)
rgLinkId = lens _rgLinkId (\ s a -> s{_rgLinkId = a})

-- | OAuth 2.0 token for the current user.
rgOauthToken :: Lens' ReportsGet' (Maybe Text)
rgOauthToken
  = lens _rgOauthToken (\ s a -> s{_rgOauthToken = a})

-- | Filters to capture one of the given order IDs. Optional.
rgOrderId :: Lens' ReportsGet' (Maybe Text)
rgOrderId
  = lens _rgOrderId (\ s a -> s{_rgOrderId = a})

-- | The IDs of the publishers to look up, if applicable.
rgPublisherId :: Lens' ReportsGet' (Maybe Text)
rgPublisherId
  = lens _rgPublisherId
      (\ s a -> s{_rgPublisherId = a})

-- | The type of report being requested. Valid values: \'order_delta\'.
-- Required.
rgReportType :: Lens' ReportsGet' ReportsGet'ReportType
rgReportType
  = lens _rgReportType (\ s a -> s{_rgReportType = a})

-- | Offset on which to return results when paging. Optional.
rgStartIndex :: Lens' ReportsGet' (Maybe Word32)
rgStartIndex
  = lens _rgStartIndex (\ s a -> s{_rgStartIndex = a})

-- | Max number of items to return in this page. Optional. Defaults to return
-- all results.
rgMaxResults :: Lens' ReportsGet' (Maybe Word32)
rgMaxResults
  = lens _rgMaxResults (\ s a -> s{_rgMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rgFields :: Lens' ReportsGet' (Maybe Text)
rgFields = lens _rgFields (\ s a -> s{_rgFields = a})

-- | Data format for the response.
rgAlt :: Lens' ReportsGet' Alt
rgAlt = lens _rgAlt (\ s a -> s{_rgAlt = a})

instance GoogleRequest ReportsGet' where
        type Rs ReportsGet' = Report
        request = requestWithRoute defReq affiliatesURL
        requestWithRoute r u ReportsGet'{..}
          = go _rgStatus _rgQuotaUser (Just _rgPrettyPrint)
              _rgUserIp
              _rgAdvertiserId
              _rgEndDate
              _rgRoleId
              _rgRole
              _rgEventType
              _rgStartDate
              _rgKey
              _rgCalculateTotals
              _rgLinkId
              _rgOauthToken
              _rgOrderId
              _rgPublisherId
              _rgReportType
              _rgStartIndex
              _rgMaxResults
              _rgFields
              (Just _rgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ReportsGetAPI) r u