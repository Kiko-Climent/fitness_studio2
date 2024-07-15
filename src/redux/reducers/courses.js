import {
    GET_COURSES_SUCCESS,
    GET_COURSES_FAIL
} from '../actions/types'

const initialState = {
    courses: null
};

export default function Courses(state = initialState, actions) {
    const { type, payload } = actions;

    switch(type) {
        case GET_COURSES_SUCCESS:
            return {
                ...state,
                courses: payload.courses
            }
        case GET_COURSES_FAIL:
            return {
                ...state,
                courses: null
            }
        default:
            return state
    }
}