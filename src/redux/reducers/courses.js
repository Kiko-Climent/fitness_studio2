import {
    GET_COURSES_SUCCESS,
    GET_COURSES_FAIL
} from '../actions/types'

const initialState = {
    courses: []
};

export default function Courses(state = initialState, actions) {
    const { type, payload } = actions;

    switch(type) {
        case GET_COURSES_SUCCESS:
            return {
                ...state,
                courses: payload
            }
        case GET_COURSES_FAIL:
            return {
                ...state,
                courses: []
            }
        default:
            return state
    }
}