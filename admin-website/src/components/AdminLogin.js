import React from 'react'
import './AdminLogin.css';
import { Link } from "react-router-dom";
import Women from '../images/login.gif'

function AdminLogin() {
  return (
    <div className="background">
    <div className="container-fluid box_login">
      <div className="col-md-6 col-sm-12 login_container">
        <img className="logo"  />
        <form >
          <h1 className="login_heading">Admin Login</h1>
          <label className="input_label">Username</label>
          <div className="login_input">
            <input
              id="username"
              name="username"
              type="text"
              className="input_box"
              placeholder="Enter Your Username"
            //   value={formik.values.username}
            //   onBlur={formik.handleBlur}
            //   onChange={(e) => {
            //     formik.handleChange(e);
            //   }}

              // onChange={(e)=>{setUsername(e.target.value)}}
            />
            {/* {formik.touched.username && formik.errors.username ? (
              <p className="error_login">{formik.errors.username}</p>
            ) : null} */}
          </div>

          <label className="input_label">Password</label>
          <div className="login_input">
            <input
              type="password"
              id="password"
              name="password"
              className="input_box"
              placeholder="Enter password"
            //   value={formik.values.password}
            //   onBlur={formik.handleBlur}
            //   onChange={(e) => {
            //     formik.handleChange(e);
            //   }}
            />
            {/* {formik.touched.password && formik.errors.password ? (
              <p className="error_login">{formik.errors.password}</p>
            ) : null} */}
          </div>
          <div className="login_btn">
            <button
              type="submit"
              className="btn btn-primary btn-lg submit_btn"
            >
              Log in
            </button>
          </div>
        </form>
      </div>
      <div className="col-md-6 col-sm-12 login_img">
        <img className="side_img" src={Women}  alt="Login" />
      </div>
    </div>
  </div>
  )
}

export default AdminLogin