import { runWithAdal } from 'react-adal';
import {authContext, getToken} from './adalConfig';

const DO_NOT_LOGIN = false;

runWithAdal(authContext, () => {

    // eslint-disable-next-line
    require('./indexApp.js');
    const token =  getToken();

},DO_NOT_LOGIN);

