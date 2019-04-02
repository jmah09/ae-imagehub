import { AuthenticationContext, adalFetch, withAdalLogin } from 'react-adal';

// todo : change (tenant and api) to ae.onmicrosoft.com once domain has been established
// todo : document this
export const adalConfig = {
    tenant: 'gwangjaehotmail.onmicrosoft.com',
    clientId: 'a42cbd10-bbd7-414f-b9f8-733274fea3c1',
    endpoints: {
        api: 'a42cbd10-bbd7-414f-b9f8-733274fea3c1'
    },
    postLogoutRedirectUri: window.location.origin,
    //redirectUri: 'https://aeimagehub.azurewebsites.net',
    redirectUri: 'http://localhost:5000/',
    cacheLocation: 'sessionStorage'
};

export const authContext = new AuthenticationContext(adalConfig);

export const getToken = () => {
    return authContext.getCachedToken(authContext.config.clientId);
};


export const getCredentials = (token) => {
    let base64Url = token.split('.')[1];
    let base64 = base64Url.replace('-', '+').replace('_', '/');
    return JSON.parse(window.atob(base64));
};

export const isAdmin = () => {
    const adminGroup = "e76d7410-92be-4073-9709-2d8b737f1d44";
    let groupClaims = getUser().profile["groups"];
    if (groupClaims != null) {
        return getUser().profile["groups"].includes(adminGroup);
    }
    return false;
};

export const adalApiFetch = (fetch, url, options) =>
adalFetch(authContext, adalConfig.endpoints.api, fetch, url, options);

export const withAdalLoginApi = withAdalLogin(authContext, adalConfig.endpoints.api);

export const getUser = () => {
    return authContext.getCachedUser();
};

// returns true if current browser is IE, false otherwise
export const isIE = () => {
   return /*@cc_on!@*/false || !!document.documentMode;
};