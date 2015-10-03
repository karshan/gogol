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
-- Module      : Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFloodlightConfigurationsPatch@.
module Network.Google.Resource.DFAReporting.FloodlightConfigurations.Patch
    (
    -- * REST Resource
      FloodlightConfigurationsPatchResource

    -- * Creating a Request
    , floodlightConfigurationsPatch'
    , FloodlightConfigurationsPatch'

    -- * Request Lenses
    , fcpQuotaUser
    , fcpPrettyPrint
    , fcpUserIP
    , fcpProfileId
    , fcpKey
    , fcpId
    , fcpFloodlightConfiguration
    , fcpOAuthToken
    , fcpFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFloodlightConfigurationsPatch@ which the
-- 'FloodlightConfigurationsPatch'' request conforms to.
type FloodlightConfigurationsPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "floodlightConfigurations" :>
           QueryParam "id" Int64 :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] FloodlightConfiguration :>
                             Patch '[JSON] FloodlightConfiguration

-- | Updates an existing floodlight configuration. This method supports patch
-- semantics.
--
-- /See:/ 'floodlightConfigurationsPatch'' smart constructor.
data FloodlightConfigurationsPatch' = FloodlightConfigurationsPatch'
    { _fcpQuotaUser               :: !(Maybe Text)
    , _fcpPrettyPrint             :: !Bool
    , _fcpUserIP                  :: !(Maybe Text)
    , _fcpProfileId               :: !Int64
    , _fcpKey                     :: !(Maybe Key)
    , _fcpId                      :: !Int64
    , _fcpFloodlightConfiguration :: !FloodlightConfiguration
    , _fcpOAuthToken              :: !(Maybe OAuthToken)
    , _fcpFields                  :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FloodlightConfigurationsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'fcpQuotaUser'
--
-- * 'fcpPrettyPrint'
--
-- * 'fcpUserIP'
--
-- * 'fcpProfileId'
--
-- * 'fcpKey'
--
-- * 'fcpId'
--
-- * 'fcpFloodlightConfiguration'
--
-- * 'fcpOAuthToken'
--
-- * 'fcpFields'
floodlightConfigurationsPatch'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> FloodlightConfiguration -- ^ 'FloodlightConfiguration'
    -> FloodlightConfigurationsPatch'
floodlightConfigurationsPatch' pFcpProfileId_ pFcpId_ pFcpFloodlightConfiguration_ =
    FloodlightConfigurationsPatch'
    { _fcpQuotaUser = Nothing
    , _fcpPrettyPrint = True
    , _fcpUserIP = Nothing
    , _fcpProfileId = pFcpProfileId_
    , _fcpKey = Nothing
    , _fcpId = pFcpId_
    , _fcpFloodlightConfiguration = pFcpFloodlightConfiguration_
    , _fcpOAuthToken = Nothing
    , _fcpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
fcpQuotaUser :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpQuotaUser
  = lens _fcpQuotaUser (\ s a -> s{_fcpQuotaUser = a})

-- | Returns response with indentations and line breaks.
fcpPrettyPrint :: Lens' FloodlightConfigurationsPatch' Bool
fcpPrettyPrint
  = lens _fcpPrettyPrint
      (\ s a -> s{_fcpPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
fcpUserIP :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpUserIP
  = lens _fcpUserIP (\ s a -> s{_fcpUserIP = a})

-- | User profile ID associated with this request.
fcpProfileId :: Lens' FloodlightConfigurationsPatch' Int64
fcpProfileId
  = lens _fcpProfileId (\ s a -> s{_fcpProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
fcpKey :: Lens' FloodlightConfigurationsPatch' (Maybe Key)
fcpKey = lens _fcpKey (\ s a -> s{_fcpKey = a})

-- | Floodlight configuration ID.
fcpId :: Lens' FloodlightConfigurationsPatch' Int64
fcpId = lens _fcpId (\ s a -> s{_fcpId = a})

-- | Multipart request metadata.
fcpFloodlightConfiguration :: Lens' FloodlightConfigurationsPatch' FloodlightConfiguration
fcpFloodlightConfiguration
  = lens _fcpFloodlightConfiguration
      (\ s a -> s{_fcpFloodlightConfiguration = a})

-- | OAuth 2.0 token for the current user.
fcpOAuthToken :: Lens' FloodlightConfigurationsPatch' (Maybe OAuthToken)
fcpOAuthToken
  = lens _fcpOAuthToken
      (\ s a -> s{_fcpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
fcpFields :: Lens' FloodlightConfigurationsPatch' (Maybe Text)
fcpFields
  = lens _fcpFields (\ s a -> s{_fcpFields = a})

instance GoogleAuth FloodlightConfigurationsPatch'
         where
        authKey = fcpKey . _Just
        authToken = fcpOAuthToken . _Just

instance GoogleRequest FloodlightConfigurationsPatch'
         where
        type Rs FloodlightConfigurationsPatch' =
             FloodlightConfiguration
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u
          FloodlightConfigurationsPatch'{..}
          = go _fcpProfileId (Just _fcpId) _fcpQuotaUser
              (Just _fcpPrettyPrint)
              _fcpUserIP
              _fcpFields
              _fcpKey
              _fcpOAuthToken
              (Just AltJSON)
              _fcpFloodlightConfiguration
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy FloodlightConfigurationsPatchResource)
                      r
                      u