import { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { get_user_profile, update_user_profile } from "../../redux/actions/profile";
import Layout from "hocs/layouts/Layout";
import { Helmet } from "react-helmet-async";
import Navbar from "components/navigation/Navbar";
import UserProfile from "components/profile/Profile";

function Profile() {
  const dispatch = useDispatch();
  const profile = useSelector((state) => state.Profile?.profile || null);
  console.log("Profile from Redux state:", profile);
  const Auth = useSelector((state) => state.Auth);
  const { isAuthenticated, loading, user } = Auth;

  const [isEditing, setIsEditing] = useState(false);
  const [formData, setFormData] = useState({
    address: '',
    city: '',
    zipcode: '',
    phone: ''
  });

  const { address, city, zipcode, phone } = formData;

  // Este useEffect se dispara cuando el usuario está autenticado y los datos han terminado de cargar
  useEffect(() => {
    console.log("Auth state:", Auth);
    if (isAuthenticated && !loading) {
      console.log("Dispatching get_user_profile");
      dispatch(get_user_profile());
    }
  }, [dispatch, isAuthenticated, loading]);

  // Si ya tienes el perfil, actualizas el formData con los datos del perfil del usuario
  useEffect(() => {
    console.log("Current profile state:", profile);
    if (profile) {
      console.log("Profile data loaded:", profile);
      setFormData({
        address: profile.address || '',
        city: profile.city || '',
        zipcode: profile.zipcode || '',
        phone: profile.phone || ''
      });
    }
  }, [profile]);

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prevData) => ({
      ...prevData,
      [name]: value
    }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    dispatch(update_user_profile(formData.address, formData.city, formData.zipcode, formData.phone));
    setIsEditing(false);
  };

  return (
    <Layout>
      <Helmet>
      <title>Hercules | Traning</title>
                <meta name="description" content="Fitness Studio. Empower your body, elevate your mind"/>
                <meta name="keywords" content="gym, fitness, pilates, crossfit, yoga"/>
                <meta name="robots" content="all"/>
                <link rel="canonical" href="https://hercules-fitness.com"/>
                <meta name="author" content="Hercules"/>
                <meta name="publisher" content="Hercules"/>

                {/* Social Media Tags */}
                <meta property="og:title" content='Hercules | Fitness Studio' />
                <meta property="og:description" content='Fitness Studio. Empower your body, elevate your mind.' />
                <meta property="og:url" content="https:/hercules-fitness.com/" />
                <meta property="og:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />

                <meta name="twitter:title" content='Hercules | Fitness Studio' />
                <meta
                    name="twitter:description"
                    content='Fitness Studio. Empower your body, elevate your mind.'
                />
                <meta name="twitter:image" content='https://bafybeicwrhxloesdlojn3bxyjqnxgsagtd4sl53a7t4cn4vfe2abmybzua.ipfs.w3s.link/lightbnuilbg.jpg' />
                <meta name="twitter:card" content="summary_large_image" />
      </Helmet>
      <Navbar />
  
        <UserProfile />
      
    </Layout>
  );
}

export default Profile;
