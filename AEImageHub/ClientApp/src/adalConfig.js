import { AuthenticationContext, adalFetch, withAdalLogin } from 'react-adal';

// todo : change (tenant and api) to ae.onmicrosoft.com once domain has been established
// todo : document this
const adalConfig = {
    tenant: 'gwangjaehotmail.onmicrosoft.com',
    clientId: 'd979cf7a-d85d-4ec4-a47c-99631e13953a',
    endpoints: {
        api: 'd979cf7a-d85d-4ec4-a47c-99631e13953a'
    },
    postLogoutRedirectUri: window.location.origin,
    redirectUri: 'http://localhost:5000',
    cacheLocation: 'sessionStorage'
};

export const authContext = new AuthenticationContext(adalConfig);

export const getToken = () => {
    return authContext.getCachedToken(authContext.config.clientId);
};

export const adalApiFetch = (fetch, url, options) =>
    adalFetch(authContext, adalConfig.endpoints.api, fetch, url, options);

export const withAdalLoginApi = withAdalLogin(authContext, adalConfig.endpoints.api);