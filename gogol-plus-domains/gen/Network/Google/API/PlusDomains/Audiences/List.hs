{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.PlusDomains.Audiences.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all of the audiences to which a user can share.
--
-- /See:/ <https://developers.google.com/+/domains/ Google+ Domains API Reference> for @plusDomains.audiences.list@.
module Network.Google.API.PlusDomains.Audiences.List
    (
    -- * REST Resource
      AudiencesListAPI

    -- * Creating a Request
    , audiencesList'
    , AudiencesList'

    -- * Request Lenses
    , alQuotaUser
    , alPrettyPrint
    , alUserIp
    , alUserId
    , alKey
    , alPageToken
    , alOauthToken
    , alMaxResults
    , alFields
    , alAlt
    ) where

import           Network.Google.PlusDomains.Types
import           Network.Google.Prelude

-- | A resource alias for plusDomains.audiences.list which the
-- 'AudiencesList'' request conforms to.
type AudiencesListAPI =
     "people" :>
       Capture "userId" Text :>
         "audiences" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Nat :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] AudiencesFeed

-- | List all of the audiences to which a user can share.
--
-- /See:/ 'audiencesList'' smart constructor.
data AudiencesList' = AudiencesList'
    { _alQuotaUser   :: !(Maybe Text)
    , _alPrettyPrint :: !Bool
    , _alUserIp      :: !(Maybe Text)
    , _alUserId      :: !Text
    , _alKey         :: !(Maybe Text)
    , _alPageToken   :: !(Maybe Text)
    , _alOauthToken  :: !(Maybe Text)
    , _alMaxResults  :: !Nat
    , _alFields      :: !(Maybe Text)
    , _alAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AudiencesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alQuotaUser'
--
-- * 'alPrettyPrint'
--
-- * 'alUserIp'
--
-- * 'alUserId'
--
-- * 'alKey'
--
-- * 'alPageToken'
--
-- * 'alOauthToken'
--
-- * 'alMaxResults'
--
-- * 'alFields'
--
-- * 'alAlt'
audiencesList'
    :: Text -- ^ 'userId'
    -> AudiencesList'
audiencesList' pAlUserId_ =
    AudiencesList'
    { _alQuotaUser = Nothing
    , _alPrettyPrint = True
    , _alUserIp = Nothing
    , _alUserId = pAlUserId_
    , _alKey = Nothing
    , _alPageToken = Nothing
    , _alOauthToken = Nothing
    , _alMaxResults = 20
    , _alFields = Nothing
    , _alAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
alQuotaUser :: Lens' AudiencesList' (Maybe Text)
alQuotaUser
  = lens _alQuotaUser (\ s a -> s{_alQuotaUser = a})

-- | Returns response with indentations and line breaks.
alPrettyPrint :: Lens' AudiencesList' Bool
alPrettyPrint
  = lens _alPrettyPrint
      (\ s a -> s{_alPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
alUserIp :: Lens' AudiencesList' (Maybe Text)
alUserIp = lens _alUserIp (\ s a -> s{_alUserIp = a})

-- | The ID of the user to get audiences for. The special value \"me\" can be
-- used to indicate the authenticated user.
alUserId :: Lens' AudiencesList' Text
alUserId = lens _alUserId (\ s a -> s{_alUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
alKey :: Lens' AudiencesList' (Maybe Text)
alKey = lens _alKey (\ s a -> s{_alKey = a})

-- | The continuation token, which is used to page through large result sets.
-- To get the next page of results, set this parameter to the value of
-- \"nextPageToken\" from the previous response.
alPageToken :: Lens' AudiencesList' (Maybe Text)
alPageToken
  = lens _alPageToken (\ s a -> s{_alPageToken = a})

-- | OAuth 2.0 token for the current user.
alOauthToken :: Lens' AudiencesList' (Maybe Text)
alOauthToken
  = lens _alOauthToken (\ s a -> s{_alOauthToken = a})

-- | The maximum number of circles to include in the response, which is used
-- for paging. For any response, the actual number returned might be less
-- than the specified maxResults.
alMaxResults :: Lens' AudiencesList' Natural
alMaxResults
  = lens _alMaxResults (\ s a -> s{_alMaxResults = a})
      . _Nat

-- | Selector specifying which fields to include in a partial response.
alFields :: Lens' AudiencesList' (Maybe Text)
alFields = lens _alFields (\ s a -> s{_alFields = a})

-- | Data format for the response.
alAlt :: Lens' AudiencesList' Alt
alAlt = lens _alAlt (\ s a -> s{_alAlt = a})

instance GoogleRequest AudiencesList' where
        type Rs AudiencesList' = AudiencesFeed
        request = requestWithRoute defReq plusDomainsURL
        requestWithRoute r u AudiencesList'{..}
          = go _alQuotaUser (Just _alPrettyPrint) _alUserIp
              _alUserId
              _alKey
              _alPageToken
              _alOauthToken
              (Just _alMaxResults)
              _alFields
              (Just _alAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy AudiencesListAPI) r
                      u