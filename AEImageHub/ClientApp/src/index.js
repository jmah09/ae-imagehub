import { runWithAdal } from 'react-adal';
import { authContext, getToken } from './adalConfig';

const DO_NOT_LOGIN = false;


runWithAdal(authContext, () => {

    // eslint-disable-next-line
    require('./indexApp.js');
    const token = getToken();
    console.log(token);
    console.log(parseJwt(token));
    console.log(parseJwt(token).name);

},DO_NOT_LOGIN);


function parseJwt(token) {
    var base64Url = token.split('.')[1];
    var base64 = base64Url.replace('-', '+').replace('_', '/');
    return JSON.parse(window.atob(base64));
};