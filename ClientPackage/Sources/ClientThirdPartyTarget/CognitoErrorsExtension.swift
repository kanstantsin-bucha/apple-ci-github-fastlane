import AuthenticationServices
import AWSCognitoIdentityProvider
import Foundation

extension Error {
    public var isCognitoNotAuthorizedError: Bool {
         let error = self as NSError
         return error.domain == AWSCognitoIdentityProviderErrorDomain &&
                 error.code == AWSCognitoIdentityProviderErrorType.notAuthorized.rawValue
    }

    public var isASAuthorizationCancelledError: Bool {
        // 1000 is "unknown" error, but it is reported when user is not signed to iCloud and cancels the iCloud login prompt.
        // 1001 error code means that the authorization request was cancelled.
        if let authError = self as? ASAuthorizationError,
           authError._nsError.code == 1001 || authError._nsError.code == 1000 {
            return true
        }
        return false
    }
    
    public var isUserNameExistsError: Bool {
        let error = self as NSError
        return error.domain == AWSCognitoIdentityProviderErrorDomain &&
            error.code == AWSCognitoIdentityProviderErrorType.usernameExists.rawValue
    }
}
