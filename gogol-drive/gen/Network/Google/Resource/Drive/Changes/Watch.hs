{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Changes.Watch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Subscribe to changes for a user.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChangesWatch@.
module Network.Google.Resource.Drive.Changes.Watch
    (
    -- * REST Resource
      ChangesWatchResource

    -- * Creating a Request
    , changesWatch'
    , ChangesWatch'

    -- * Request Lenses
    , cwQuotaUser
    , cwPrettyPrint
    , cwUserIP
    , cwIncludeSubscribed
    , cwStartChangeId
    , cwChannel
    , cwKey
    , cwSpaces
    , cwPageToken
    , cwOAuthToken
    , cwMaxResults
    , cwIncludeDeleted
    , cwFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChangesWatch@ which the
-- 'ChangesWatch'' request conforms to.
type ChangesWatchResource =
     "changes" :>
       "watch" :>
         QueryParam "includeDeleted" Bool :>
           QueryParam "includeSubscribed" Bool :>
             QueryParam "maxResults" Int32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "spaces" Text :>
                   QueryParam "startChangeId" Int64 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" Key :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   ReqBody '[JSON] Channel :>
                                     Post '[JSON] Channel

-- | Subscribe to changes for a user.
--
-- /See:/ 'changesWatch'' smart constructor.
data ChangesWatch' = ChangesWatch'
    { _cwQuotaUser         :: !(Maybe Text)
    , _cwPrettyPrint       :: !Bool
    , _cwUserIP            :: !(Maybe Text)
    , _cwIncludeSubscribed :: !Bool
    , _cwStartChangeId     :: !(Maybe Int64)
    , _cwChannel           :: !Channel
    , _cwKey               :: !(Maybe Key)
    , _cwSpaces            :: !(Maybe Text)
    , _cwPageToken         :: !(Maybe Text)
    , _cwOAuthToken        :: !(Maybe OAuthToken)
    , _cwMaxResults        :: !Int32
    , _cwIncludeDeleted    :: !Bool
    , _cwFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesWatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwQuotaUser'
--
-- * 'cwPrettyPrint'
--
-- * 'cwUserIP'
--
-- * 'cwIncludeSubscribed'
--
-- * 'cwStartChangeId'
--
-- * 'cwChannel'
--
-- * 'cwKey'
--
-- * 'cwSpaces'
--
-- * 'cwPageToken'
--
-- * 'cwOAuthToken'
--
-- * 'cwMaxResults'
--
-- * 'cwIncludeDeleted'
--
-- * 'cwFields'
changesWatch'
    :: Channel -- ^ 'Channel'
    -> ChangesWatch'
changesWatch' pCwChannel_ =
    ChangesWatch'
    { _cwQuotaUser = Nothing
    , _cwPrettyPrint = True
    , _cwUserIP = Nothing
    , _cwIncludeSubscribed = True
    , _cwStartChangeId = Nothing
    , _cwChannel = pCwChannel_
    , _cwKey = Nothing
    , _cwSpaces = Nothing
    , _cwPageToken = Nothing
    , _cwOAuthToken = Nothing
    , _cwMaxResults = 100
    , _cwIncludeDeleted = True
    , _cwFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cwQuotaUser :: Lens' ChangesWatch' (Maybe Text)
cwQuotaUser
  = lens _cwQuotaUser (\ s a -> s{_cwQuotaUser = a})

-- | Returns response with indentations and line breaks.
cwPrettyPrint :: Lens' ChangesWatch' Bool
cwPrettyPrint
  = lens _cwPrettyPrint
      (\ s a -> s{_cwPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cwUserIP :: Lens' ChangesWatch' (Maybe Text)
cwUserIP = lens _cwUserIP (\ s a -> s{_cwUserIP = a})

-- | Whether to include public files the user has opened and shared files.
-- When set to false, the list only includes owned files plus any shared or
-- public files the user has explicitly added to a folder they own.
cwIncludeSubscribed :: Lens' ChangesWatch' Bool
cwIncludeSubscribed
  = lens _cwIncludeSubscribed
      (\ s a -> s{_cwIncludeSubscribed = a})

-- | Change ID to start listing changes from.
cwStartChangeId :: Lens' ChangesWatch' (Maybe Int64)
cwStartChangeId
  = lens _cwStartChangeId
      (\ s a -> s{_cwStartChangeId = a})

-- | Multipart request metadata.
cwChannel :: Lens' ChangesWatch' Channel
cwChannel
  = lens _cwChannel (\ s a -> s{_cwChannel = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cwKey :: Lens' ChangesWatch' (Maybe Key)
cwKey = lens _cwKey (\ s a -> s{_cwKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
cwSpaces :: Lens' ChangesWatch' (Maybe Text)
cwSpaces = lens _cwSpaces (\ s a -> s{_cwSpaces = a})

-- | Page token for changes.
cwPageToken :: Lens' ChangesWatch' (Maybe Text)
cwPageToken
  = lens _cwPageToken (\ s a -> s{_cwPageToken = a})

-- | OAuth 2.0 token for the current user.
cwOAuthToken :: Lens' ChangesWatch' (Maybe OAuthToken)
cwOAuthToken
  = lens _cwOAuthToken (\ s a -> s{_cwOAuthToken = a})

-- | Maximum number of changes to return.
cwMaxResults :: Lens' ChangesWatch' Int32
cwMaxResults
  = lens _cwMaxResults (\ s a -> s{_cwMaxResults = a})

-- | Whether to include deleted items.
cwIncludeDeleted :: Lens' ChangesWatch' Bool
cwIncludeDeleted
  = lens _cwIncludeDeleted
      (\ s a -> s{_cwIncludeDeleted = a})

-- | Selector specifying which fields to include in a partial response.
cwFields :: Lens' ChangesWatch' (Maybe Text)
cwFields = lens _cwFields (\ s a -> s{_cwFields = a})

instance GoogleAuth ChangesWatch' where
        authKey = cwKey . _Just
        authToken = cwOAuthToken . _Just

instance GoogleRequest ChangesWatch' where
        type Rs ChangesWatch' = Channel
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChangesWatch'{..}
          = go (Just _cwIncludeDeleted)
              (Just _cwIncludeSubscribed)
              (Just _cwMaxResults)
              _cwPageToken
              _cwSpaces
              _cwStartChangeId
              _cwQuotaUser
              (Just _cwPrettyPrint)
              _cwUserIP
              _cwFields
              _cwKey
              _cwOAuthToken
              (Just AltJSON)
              _cwChannel
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ChangesWatchResource)
                      r
                      u