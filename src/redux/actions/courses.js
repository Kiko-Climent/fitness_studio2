import axios from 'axios';

import {
    GET_COURSES_FAIL,
    GET_COURSES_SUCCESS,
} from './types';

export const get_courses = () => async dispatch => {
    const config = {
        headers: {
            'Accept': 'application/json'
        }
    };

    try {
        const res = await axios.get(`${process.env.REACT_APP_API_URL}/api/courses/`, config)

        if (res.status === 200) {
            dispatch({
                type: GET_COURSES_SUCCESS,
                payload: res.data
            });
        } else {
            dispatch({
                type: GET_COURSES_FAIL
            });
        }
    } catch(err) {
        dispatch({
            type: GET_COURSES_FAIL
        });
    }
}
