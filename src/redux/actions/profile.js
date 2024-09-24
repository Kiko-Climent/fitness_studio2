import axios from "axios"
import { setAlert } from "./alert"
import {
  GET_USER_PROFILE_SUCCESS,
  GET_USER_PROFILE_FAIL,
  UPDATE_USER_PROFILE_SUCCESS,
  UPDATE_USER_PROFILE_FAIL,
} from './types'

export const get_user_profile = () => async dispatch => {
  if (localStorage.getItem('access')) {
    const config = {
      headers: {
        'Accept': 'application/json',
        'Authorization': `JWT ${localStorage.getItem('access')}`
      }
    };

    try {
        const res = await axios.get(`${process.env.REACT_APP_API_URL}/api/profile/user`, config)
        console.log("Profile data from API:", res.data);

        if (res.status === 200) {
            dispatch({
                type: GET_USER_PROFILE_SUCCESS,
                payload: res.data
            });
        } else {
            dispatch({
                type: GET_USER_PROFILE_FAIL
            });
        }
    } catch(err) {
      console.error("Error fetching profile:", err);
        dispatch({
            type: GET_USER_PROFILE_FAIL
        });
    }
  }
}


export const update_user_profile = (
  address,
  city,
  zipcode,
  phone,
) => async dispatch => {
  if (localStorage.getItem('access')) {
    const config = {
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `JWT ${localStorage.getItem('access')}`
      }
    };

    const body = JSON.stringify({
      address,
      city,
      zipcode,
      phone
    });

    try {
      const res = await axios.put(`${process.env.REACT_APP_API_URL}/api/profile/update`, body, config);

      if (res.status === 200) {
          dispatch({
              type: UPDATE_USER_PROFILE_SUCCESS,
              payload: res.data
          });
          dispatch(setAlert('Profile updated successfully', 'green'));
      } else {
          dispatch({
              type: UPDATE_USER_PROFILE_FAIL
          });
          dispatch(setAlert('Failed to update profile', 'red'));
      }
    } catch(err) {
      dispatch({
          type: UPDATE_USER_PROFILE_FAIL
      });
      dispatch(setAlert('Failed to update profile', 'red'));
    }  
  }
}
