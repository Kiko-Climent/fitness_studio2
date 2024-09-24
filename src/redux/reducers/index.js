import { combineReducers } from 'redux'
import Auth from './auth'
import Alert from './alert'
import Categories from './categories'
import Courses from './courses'
import Profile from './profile'


export default combineReducers({
    Auth,
    Alert,
    Categories,
    Courses,
    Profile
});