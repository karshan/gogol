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
-- Module      : Network.Google.Resource.Drive.Permissions.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a permission using patch semantics.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DrivePermissionsPatch@.
module Network.Google.Resource.Drive.Permissions.Patch
    (
    -- * REST Resource
      PermissionsPatchResource

    -- * Creating a Request
    , permissionsPatch'
    , PermissionsPatch'

    -- * Request Lenses
    , pppQuotaUser
    , pppPrettyPrint
    , pppUserIP
    , pppKey
    , pppTransferOwnership
    , pppFileId
    , pppOAuthToken
    , pppPermission
    , pppPermissionId
    , pppFields
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DrivePermissionsPatch@ which the
-- 'PermissionsPatch'' request conforms to.
type PermissionsPatchResource =
     "files" :>
       Capture "fileId" Text :>
         "permissions" :>
           Capture "permissionId" Text :>
             QueryParam "transferOwnership" Bool :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Permission :>
                               Patch '[JSON] Permission

-- | Updates a permission using patch semantics.
--
-- /See:/ 'permissionsPatch'' smart constructor.
data PermissionsPatch' = PermissionsPatch'
    { _pppQuotaUser         :: !(Maybe Text)
    , _pppPrettyPrint       :: !Bool
    , _pppUserIP            :: !(Maybe Text)
    , _pppKey               :: !(Maybe Key)
    , _pppTransferOwnership :: !Bool
    , _pppFileId            :: !Text
    , _pppOAuthToken        :: !(Maybe OAuthToken)
    , _pppPermission        :: !Permission
    , _pppPermissionId      :: !Text
    , _pppFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PermissionsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pppQuotaUser'
--
-- * 'pppPrettyPrint'
--
-- * 'pppUserIP'
--
-- * 'pppKey'
--
-- * 'pppTransferOwnership'
--
-- * 'pppFileId'
--
-- * 'pppOAuthToken'
--
-- * 'pppPermission'
--
-- * 'pppPermissionId'
--
-- * 'pppFields'
permissionsPatch'
    :: Text -- ^ 'fileId'
    -> Permission -- ^ 'Permission'
    -> Text -- ^ 'permissionId'
    -> PermissionsPatch'
permissionsPatch' pPppFileId_ pPppPermission_ pPppPermissionId_ =
    PermissionsPatch'
    { _pppQuotaUser = Nothing
    , _pppPrettyPrint = True
    , _pppUserIP = Nothing
    , _pppKey = Nothing
    , _pppTransferOwnership = False
    , _pppFileId = pPppFileId_
    , _pppOAuthToken = Nothing
    , _pppPermission = pPppPermission_
    , _pppPermissionId = pPppPermissionId_
    , _pppFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
pppQuotaUser :: Lens' PermissionsPatch' (Maybe Text)
pppQuotaUser
  = lens _pppQuotaUser (\ s a -> s{_pppQuotaUser = a})

-- | Returns response with indentations and line breaks.
pppPrettyPrint :: Lens' PermissionsPatch' Bool
pppPrettyPrint
  = lens _pppPrettyPrint
      (\ s a -> s{_pppPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
pppUserIP :: Lens' PermissionsPatch' (Maybe Text)
pppUserIP
  = lens _pppUserIP (\ s a -> s{_pppUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
pppKey :: Lens' PermissionsPatch' (Maybe Key)
pppKey = lens _pppKey (\ s a -> s{_pppKey = a})

-- | Whether changing a role to \'owner\' downgrades the current owners to
-- writers. Does nothing if the specified role is not \'owner\'.
pppTransferOwnership :: Lens' PermissionsPatch' Bool
pppTransferOwnership
  = lens _pppTransferOwnership
      (\ s a -> s{_pppTransferOwnership = a})

-- | The ID for the file.
pppFileId :: Lens' PermissionsPatch' Text
pppFileId
  = lens _pppFileId (\ s a -> s{_pppFileId = a})

-- | OAuth 2.0 token for the current user.
pppOAuthToken :: Lens' PermissionsPatch' (Maybe OAuthToken)
pppOAuthToken
  = lens _pppOAuthToken
      (\ s a -> s{_pppOAuthToken = a})

-- | Multipart request metadata.
pppPermission :: Lens' PermissionsPatch' Permission
pppPermission
  = lens _pppPermission
      (\ s a -> s{_pppPermission = a})

-- | The ID for the permission.
pppPermissionId :: Lens' PermissionsPatch' Text
pppPermissionId
  = lens _pppPermissionId
      (\ s a -> s{_pppPermissionId = a})

-- | Selector specifying which fields to include in a partial response.
pppFields :: Lens' PermissionsPatch' (Maybe Text)
pppFields
  = lens _pppFields (\ s a -> s{_pppFields = a})

instance GoogleAuth PermissionsPatch' where
        authKey = pppKey . _Just
        authToken = pppOAuthToken . _Just

instance GoogleRequest PermissionsPatch' where
        type Rs PermissionsPatch' = Permission
        request = requestWithRoute defReq driveURL
        requestWithRoute r u PermissionsPatch'{..}
          = go (Just _pppTransferOwnership) _pppFileId
              _pppPermissionId
              _pppQuotaUser
              (Just _pppPrettyPrint)
              _pppUserIP
              _pppFields
              _pppKey
              _pppOAuthToken
              (Just AltJSON)
              _pppPermission
          where go
                  = clientWithRoute
                      (Proxy :: Proxy PermissionsPatchResource)
                      r
                      u