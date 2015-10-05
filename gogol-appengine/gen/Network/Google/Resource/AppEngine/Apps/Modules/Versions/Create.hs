{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deploys new code and resource files to a version.
--
-- /See:/ <https://developers.google.com/appengine/ Google App Engine Admin API Reference> for @AppEngineAppsModulesVersionsCreate@.
module Network.Google.Resource.AppEngine.Apps.Modules.Versions.Create
    (
    -- * REST Resource
      AppsModulesVersionsCreateResource

    -- * Creating a Request
    , appsModulesVersionsCreate'
    , AppsModulesVersionsCreate'

    -- * Request Lenses
    , amvcXgafv
    , amvcQuotaUser
    , amvcPrettyPrint
    , amvcUploadProtocol
    , amvcPp
    , amvcAccessToken
    , amvcUploadType
    , amvcPayload
    , amvcModulesId
    , amvcBearerToken
    , amvcKey
    , amvcAppsId
    , amvcOAuthToken
    , amvcFields
    , amvcCallback
    ) where

import           Network.Google.AppEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @AppEngineAppsModulesVersionsCreate@ which the
-- 'AppsModulesVersionsCreate'' request conforms to.
type AppsModulesVersionsCreateResource =
     "v1beta4" :>
       "apps" :>
         Capture "appsId" Text :>
           "modules" :>
             Capture "modulesId" Text :>
               "versions" :>
                 QueryParam "$.xgafv" Text :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "pp" Bool :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "bearer_token" Text :>
                             QueryParam "callback" Text :>
                               QueryParam "quotaUser" Text :>
                                 QueryParam "prettyPrint" Bool :>
                                   QueryParam "fields" Text :>
                                     QueryParam "key" AuthKey :>
                                       QueryParam "oauth_token" OAuthToken :>
                                         QueryParam "alt" AltJSON :>
                                           ReqBody '[JSON] Version :>
                                             Post '[JSON] Operation

-- | Deploys new code and resource files to a version.
--
-- /See:/ 'appsModulesVersionsCreate'' smart constructor.
data AppsModulesVersionsCreate' = AppsModulesVersionsCreate'
    { _amvcXgafv          :: !(Maybe Text)
    , _amvcQuotaUser      :: !(Maybe Text)
    , _amvcPrettyPrint    :: !Bool
    , _amvcUploadProtocol :: !(Maybe Text)
    , _amvcPp             :: !Bool
    , _amvcAccessToken    :: !(Maybe Text)
    , _amvcUploadType     :: !(Maybe Text)
    , _amvcPayload        :: !Version
    , _amvcModulesId      :: !Text
    , _amvcBearerToken    :: !(Maybe Text)
    , _amvcKey            :: !(Maybe AuthKey)
    , _amvcAppsId         :: !Text
    , _amvcOAuthToken     :: !(Maybe OAuthToken)
    , _amvcFields         :: !(Maybe Text)
    , _amvcCallback       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AppsModulesVersionsCreate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'amvcXgafv'
--
-- * 'amvcQuotaUser'
--
-- * 'amvcPrettyPrint'
--
-- * 'amvcUploadProtocol'
--
-- * 'amvcPp'
--
-- * 'amvcAccessToken'
--
-- * 'amvcUploadType'
--
-- * 'amvcPayload'
--
-- * 'amvcModulesId'
--
-- * 'amvcBearerToken'
--
-- * 'amvcKey'
--
-- * 'amvcAppsId'
--
-- * 'amvcOAuthToken'
--
-- * 'amvcFields'
--
-- * 'amvcCallback'
appsModulesVersionsCreate'
    :: Version -- ^ 'payload'
    -> Text -- ^ 'modulesId'
    -> Text -- ^ 'appsId'
    -> AppsModulesVersionsCreate'
appsModulesVersionsCreate' pAmvcPayload_ pAmvcModulesId_ pAmvcAppsId_ =
    AppsModulesVersionsCreate'
    { _amvcXgafv = Nothing
    , _amvcQuotaUser = Nothing
    , _amvcPrettyPrint = True
    , _amvcUploadProtocol = Nothing
    , _amvcPp = True
    , _amvcAccessToken = Nothing
    , _amvcUploadType = Nothing
    , _amvcPayload = pAmvcPayload_
    , _amvcModulesId = pAmvcModulesId_
    , _amvcBearerToken = Nothing
    , _amvcKey = Nothing
    , _amvcAppsId = pAmvcAppsId_
    , _amvcOAuthToken = Nothing
    , _amvcFields = Nothing
    , _amvcCallback = Nothing
    }

-- | V1 error format.
amvcXgafv :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcXgafv
  = lens _amvcXgafv (\ s a -> s{_amvcXgafv = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters.
amvcQuotaUser :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcQuotaUser
  = lens _amvcQuotaUser
      (\ s a -> s{_amvcQuotaUser = a})

-- | Returns response with indentations and line breaks.
amvcPrettyPrint :: Lens' AppsModulesVersionsCreate' Bool
amvcPrettyPrint
  = lens _amvcPrettyPrint
      (\ s a -> s{_amvcPrettyPrint = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
amvcUploadProtocol :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcUploadProtocol
  = lens _amvcUploadProtocol
      (\ s a -> s{_amvcUploadProtocol = a})

-- | Pretty-print response.
amvcPp :: Lens' AppsModulesVersionsCreate' Bool
amvcPp = lens _amvcPp (\ s a -> s{_amvcPp = a})

-- | OAuth access token.
amvcAccessToken :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcAccessToken
  = lens _amvcAccessToken
      (\ s a -> s{_amvcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
amvcUploadType :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcUploadType
  = lens _amvcUploadType
      (\ s a -> s{_amvcUploadType = a})

-- | Multipart request metadata.
amvcPayload :: Lens' AppsModulesVersionsCreate' Version
amvcPayload
  = lens _amvcPayload (\ s a -> s{_amvcPayload = a})

-- | Part of \`name\`. See documentation of \`appsId\`.
amvcModulesId :: Lens' AppsModulesVersionsCreate' Text
amvcModulesId
  = lens _amvcModulesId
      (\ s a -> s{_amvcModulesId = a})

-- | OAuth bearer token.
amvcBearerToken :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcBearerToken
  = lens _amvcBearerToken
      (\ s a -> s{_amvcBearerToken = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
amvcKey :: Lens' AppsModulesVersionsCreate' (Maybe AuthKey)
amvcKey = lens _amvcKey (\ s a -> s{_amvcKey = a})

-- | Part of \`name\`. Name of the resource to update. For example:
-- \"apps\/myapp\/modules\/default\".
amvcAppsId :: Lens' AppsModulesVersionsCreate' Text
amvcAppsId
  = lens _amvcAppsId (\ s a -> s{_amvcAppsId = a})

-- | OAuth 2.0 token for the current user.
amvcOAuthToken :: Lens' AppsModulesVersionsCreate' (Maybe OAuthToken)
amvcOAuthToken
  = lens _amvcOAuthToken
      (\ s a -> s{_amvcOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
amvcFields :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcFields
  = lens _amvcFields (\ s a -> s{_amvcFields = a})

-- | JSONP
amvcCallback :: Lens' AppsModulesVersionsCreate' (Maybe Text)
amvcCallback
  = lens _amvcCallback (\ s a -> s{_amvcCallback = a})

instance GoogleAuth AppsModulesVersionsCreate' where
        authKey = amvcKey . _Just
        authToken = amvcOAuthToken . _Just

instance GoogleRequest AppsModulesVersionsCreate'
         where
        type Rs AppsModulesVersionsCreate' = Operation
        request = requestWithRoute defReq appEngineURL
        requestWithRoute r u AppsModulesVersionsCreate'{..}
          = go _amvcAppsId _amvcModulesId _amvcXgafv
              _amvcUploadProtocol
              (Just _amvcPp)
              _amvcAccessToken
              _amvcUploadType
              _amvcBearerToken
              _amvcCallback
              _amvcQuotaUser
              (Just _amvcPrettyPrint)
              _amvcFields
              _amvcKey
              _amvcOAuthToken
              (Just AltJSON)
              _amvcPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AppsModulesVersionsCreateResource)
                      r
                      u
