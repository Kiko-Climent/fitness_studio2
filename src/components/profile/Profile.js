import { useState, useEffect } from "react";
import { useDispatch, useSelector } from "react-redux";
import { get_user_profile, update_user_profile } from "../../redux/actions/profile";

function UserProfile() {
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
    <section className="py-8 lg:py-32 bg-white">
      <div className="w-full lg:w-8/12 px-4 mx-auto">
        <div className="bg-white border-2 border-[#7ef455] overflow-hidden">
          {/* Header */}
          <div className="bg-[#7ef455] p-4 text-center text-white">
            <h2 className="text-2xl font-bold">My Account</h2>
          </div>

          {/* User Information */}
          <div className="py-4">
            <h3 className="text-[#ec4eca] text-lg font-semibold mb-4 pl-4">| User Information |</h3>
            <div className="flex flex-wrap">
              <div className="w-full lg:w-6/12 px-4 mb-4">
                <label className="block text-[#7ef455] text-sm font-bold mb-2">
                  Username
                </label>
                <input
                  type="text"
                  value={user ? user.get_short_name : ''}
                  className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                  readOnly
                />
              </div>
              <div className="w-full lg:w-6/12 px-4 mb-4">
                <label className="block text-[#7ef455] text-sm font-bold mb-2">
                  Email Address
                </label>
                <input
                  type="email"
                  value={user ? user.email : ''}
                  className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                  readOnly
                />
              </div>
            </div>

            {/* Contact Information */}
            <h3 className="text-[#ec4eca] text-lg font-semibold mb-4 pl-4">| Contact Information |</h3>
            <form onSubmit={handleSubmit}>
              <div className="flex flex-wrap">
                <div className="w-full lg:w-6/12 px-4 mb-4">
                  <label className="block text-[#7ef455] text-sm font-bold mb-2">
                    Address
                  </label>
                  <input
                    type="text"
                    name="address"
                    value={formData.address}
                    onChange={handleChange}
                    className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                    /* readOnly={!isEditing} */
                  />
                </div>
                <div className="w-full lg:w-6/12 px-4 mb-4">
                  <label className="block text-[#7ef455] text-sm font-bold mb-2">
                    City
                  </label>
                  <input
                    type="text"
                    name="city"
                    value={formData.city}
                    onChange={handleChange}
                    className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                    /* readOnly={!isEditing} */
                  />
                </div>
                <div className="w-full lg:w-6/12 px-4 mb-4">
                  <label className="block text-[#7ef455] text-sm font-bold mb-2">
                    Zipcode
                  </label>
                  <input
                    type="text"
                    name="zipcode"
                    value={formData.zipcode}
                    onChange={handleChange}
                    className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                    /* readOnly={!isEditing} */
                  />
                </div>
                <div className="w-full lg:w-6/12 px-4 mb-4">
                  <label className="block text-[#7ef455] text-sm font-bold mb-2">
                    Phone
                  </label>
                  <input
                    type="text"
                    name="phone"
                    value={formData.phone}
                    onChange={handleChange}
                    className="border-0 border-b-2 border-[#ec4eca] px-4 py-2 w-full"
                    /* readOnly={!isEditing} */
                  />
                </div>
              </div>
              {isEditing ? (
                <div className="flex justify-center">
                  <button
                    type="submit"
                    className="bg-[#7ef455] text-white px-4 py-2 rounded"
                  >
                    Save
                  </button>
                </div>
              ) : (
                <div className="flex justify-center">
                  <button
                    type="button"
                    onClick={() => setIsEditing(true)}
                    className="bg-[#7ef455] text-white px-4 py-2 rounded"
                  >
                    Save
                  </button>
                </div>
              )}
            </form>
          </div>
        </div>
      </div>
    </section>
  );
}

export default UserProfile;
