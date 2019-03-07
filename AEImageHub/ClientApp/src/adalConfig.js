import { AuthenticationContext, adalFetch, withAdalLogin } from 'react-adal';

// todo : change (tenant and api) to ae.onmicrosoft.com once domain has been established
// todo : document this
const adalConfig = {
    tenant: 'gwangjaehotmail.onmicrosoft.com',
    clientId: '1463cf51-dc8a-4bb7-b459-edd88f411830',
    endpoints: {
        api: '1463cf51-dc8a-4bb7-b459-edd88f411830'
    },
    postLogoutRedirectUri: window.location.origin,
    redirectUri: 'https://jaetest.azurewebsites.net',
    cacheLocation: 'sessionStorage'
};

export const authContext = new AuthenticationContext(adalConfig);

export const getToken = () => {
    return authContext.getCachedToken(authContext.config.clientId);
};

export const adalApiFetch = (fetch, url, options) =>
    adalFetch(authContext, adalConfig.endpoints.api, fetch, url, options);

export const withAdalLoginApi = withAdalLogin(authContext, adalConfig.endpoints.api);