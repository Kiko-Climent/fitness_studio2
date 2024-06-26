import { type } from '@testing-library/user-event/dist/type';
import {
    SIGNUP_SUCCESS,
    SIGNUP_FAIL,
    ACTIVATION_SUCCESS,
    ACTIVATION_FAIL,
    SET_AUTH_LOADING,
    REMOVE_AUTH_LOADING,
} from './types'
import { setAlert } from './alert';
import axios from 'axios';


console.log('Env variables:', process.env);
console.log('API URL:', process.env.REACT_APP_API_URL);

export const signup = (first_name, last_name, email, password, re_password) => async dispatch => {
    dispatch({
        type: SET_AUTH_LOADING,
    });
    const config = {
        headers: {
            'Content-Type': 'application/json'
        }
    };

    const body = JSON.stringify({
        first_name,
        last_name,
        email,
        password,
        re_password
    });

    try {
        const res = await axios.post(`${process.env.REACT_APP_API_URL}/auth/users/`, body, config);

        if (res.status === 201){
            dispatch({
                type: SIGNUP_SUCCESS,
                payload: res.data
            });
            dispatch(setAlert('You got an email, please check your inbox', 'green'));
        } else {
            dispatch({
                type: SIGNUP_FAIL
            });
            dispatch(setAlert('Error by creating account', 'red'));
        }
        dispatch({
            type: REMOVE_AUTH_LOADING
        });
    } catch (err) {
        dispatch({
            type: SIGNUP_FAIL
        });
        dispatch({
            type: REMOVE_AUTH_LOADING
        });
        dispatch(setAlert('Server Error, please try again later', 'red'));
    }
};

export const activate = (uid, token) => async dispatch => {
    dispatch({
        type: SET_AUTH_LOADING,
    });

    const config = {
        headers: {
            'Content-Type': 'application/json'
        }
    };

    const body = JSON.stringify({
        uid,
        token
    });

    try {
        const res = await axios.post(`${process.env.REACT_APP_API_URL}/auth/users/activation/`, body, config);

        if (res.status === 204) {
            dispatch({
                type: ACTIVATION_SUCCESS
            });
            dispatch(setAlert('Account succesfully activated', 'green'));
        } else {
            dispatch({
                type: ACTIVATION_FAIL
            });
            dispatch(setAlert('Error by acticating your account', 'red'));
        }
        dispatch({
            type: REMOVE_AUTH_LOADING,
        });
    }
    catch(err){
        dispatch({
            type: ACTIVATION_FAIL
        });
        dispatch({
            type: REMOVE_AUTH_LOADING,
        });
        dispatch(setAlert('Server Error, try again later', 'red'));
    }
};