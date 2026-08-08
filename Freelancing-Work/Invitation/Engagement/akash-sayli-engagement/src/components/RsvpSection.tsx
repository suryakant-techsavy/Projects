import React, { useState } from 'react';
import { CoupleDetails, RsvpResponse } from '../types';
import { Send, CheckCircle, Heart, Phone, Sparkles, MessageCircle } from 'lucide-react';

interface RsvpSectionProps {
  details: CoupleDetails;
  onAddRsvp: (rsvp: RsvpResponse) => void;
}

export const RsvpSection: React.FC<RsvpSectionProps> = ({ details, onAddRsvp }) => {
  const [name, setName] = useState('');
  const [phone, setPhone] = useState('');
  const [attending, setAttending] = useState<'yes' | 'no' | 'maybe'>('yes');
  const [guestCount, setGuestCount] = useState<number>(2);
  const [dietaryPref, setDietaryPref] = useState<'veg' | 'jain' | 'non-veg' | 'any'>('veg');
  const [blessingMessage, setBlessingMessage] = useState('');
  const [submitted, setSubmitted] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!name.trim()) return;

    const newRsvp: RsvpResponse = {
      id: 'rsvp-' + Date.now(),
      name,
      phone,
      attending,
      guestCount: attending === 'yes' ? guestCount : 0,
      dietaryPref,
      blessingMessage,
      submittedAt: new Date().toISOString()
    };

    onAddRsvp(newRsvp);
    setSubmitted(true);
  };

  const handleWhatsAppRsvp = () => {
    const textMessage = `Hii! ${attending === 'yes' ? 'We are Joyfully Attending' : 'Sending our warmest blessings for'} the Engagement of ${details.groomName} & ${details.brideName}! 💖\n\nName: ${name || 'Guest'}\nGuests Attending: ${attending === 'yes' ? guestCount : 0}\nDietary Preference: ${dietaryPref.toUpperCase()}\nBlessing: "${blessingMessage || 'Congratulations to both families!'}"`;

    const whatsappUrl = `https://wa.me/${details.whatsappNumber}?text=${encodeURIComponent(textMessage)}`;
    window.open(whatsappUrl, '_blank');
  };

  return (
    <section id="rsvp" className="py-16 md:py-24 px-4 bg-gradient-to-b from-[#FFFDFB] via-[#FFF5EA] to-[#FFFDFB] relative">
      <div className="max-w-3xl mx-auto">
        <div className="text-center mb-10">
          <div className="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-[#800A21]/10 text-[#800A21] text-xs font-semibold font-poppins mb-2">
            <Heart className="w-3.5 h-3.5 text-[#800A21] fill-[#800A21]" />
            <span>Respondez S'il Vous Plait</span>
          </div>

          <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
            RSVP & Heartfelt Blessings
          </h2>

          <p className="text-xs md:text-sm text-[#2D1518]/80 max-w-lg mx-auto font-poppins">
            Your presence is the greatest gift of all. Please let us know if you will be joining us for the Sagaai celebration!
          </p>

          <div className="w-20 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto mt-4" />
        </div>

        {/* RSVP Card Container */}
        <div className="bg-white rounded-3xl p-6 md:p-10 border-2 border-[#D4AF37] shadow-xl box-shadow-gold relative">
          {submitted ? (
            <div className="text-center py-10 space-y-4">
              <div className="w-16 h-16 rounded-full bg-[#800A21] text-[#FFEAA7] border-2 border-[#D4AF37] flex items-center justify-center mx-auto shadow-lg animate-bounce">
                <CheckCircle className="w-8 h-8" />
              </div>

              <h3 className="font-cinzel text-2xl font-bold text-[#800A21]">
                Thank You For Your Response!
              </h3>

              <p className="text-sm text-[#2D1518]/80 font-poppins max-w-md mx-auto">
                Your RSVP & blessings have been recorded. We look forward to celebrating the special day with you!
              </p>

              <div className="pt-4 flex flex-wrap justify-center gap-4">
                <button
                  onClick={handleWhatsAppRsvp}
                  className="inline-flex items-center gap-2 px-6 py-3 rounded-full bg-[#25D366] text-white font-poppins font-semibold text-xs uppercase tracking-wider shadow-md hover:bg-[#1EBE5A] transition-all cursor-pointer"
                >
                  <MessageCircle className="w-4 h-4" />
                  <span>Send Confirmation to Host on WhatsApp</span>
                </button>

                <button
                  onClick={() => setSubmitted(false)}
                  className="px-6 py-3 rounded-full bg-[#FFFDFB] text-[#800A21] border border-[#800A21]/30 font-poppins text-xs font-semibold hover:bg-[#800A21]/5 transition-all cursor-pointer"
                >
                  Edit My RSVP
                </button>
              </div>
            </div>
          ) : (
            <form onSubmit={handleSubmit} className="space-y-6">
              {/* Name & Phone */}
              <div className="grid md:grid-cols-2 gap-4">
                <div>
                  <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                    Your Full Name *
                  </label>
                  <input
                    type="text"
                    required
                    placeholder="e.g. Ramesh & Sunita Patil"
                    value={name}
                    onChange={(e) => setName(e.target.value)}
                    className="w-full px-4 py-3 rounded-xl border border-[#D4AF37]/60 text-sm font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21] bg-[#FFFDFB]"
                  />
                </div>

                <div>
                  <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                    Mobile Number (WhatsApp)
                  </label>
                  <input
                    type="tel"
                    placeholder="e.g. +91 98765 43210"
                    value={phone}
                    onChange={(e) => setPhone(e.target.value)}
                    className="w-full px-4 py-3 rounded-xl border border-[#D4AF37]/60 text-sm font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21] bg-[#FFFDFB]"
                  />
                </div>
              </div>

              {/* Will you attend? */}
              <div>
                <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-2">
                  Will You Be Joining Us?
                </label>
                <div className="grid grid-cols-3 gap-3">
                  <button
                    type="button"
                    onClick={() => setAttending('yes')}
                    className={`py-3 px-3 rounded-xl border text-xs font-poppins font-semibold transition-all cursor-pointer ${
                      attending === 'yes'
                        ? 'bg-[#800A21] text-[#FFEAA7] border-[#D4AF37] shadow-md'
                        : 'bg-[#FFFDFB] text-[#2D1518] border-[#D4AF37]/40 hover:bg-[#800A21]/5'
                    }`}
                  >
                    🎉 Joyfully Accept
                  </button>

                  <button
                    type="button"
                    onClick={() => setAttending('no')}
                    className={`py-3 px-3 rounded-xl border text-xs font-poppins font-semibold transition-all cursor-pointer ${
                      attending === 'no'
                        ? 'bg-[#800A21] text-[#FFEAA7] border-[#D4AF37] shadow-md'
                        : 'bg-[#FFFDFB] text-[#2D1518] border-[#D4AF37]/40 hover:bg-[#800A21]/5'
                    }`}
                  >
                    🙏 Regretfully Decline
                  </button>

                  <button
                    type="button"
                    onClick={() => setAttending('maybe')}
                    className={`py-3 px-3 rounded-xl border text-xs font-poppins font-semibold transition-all cursor-pointer ${
                      attending === 'maybe'
                        ? 'bg-[#800A21] text-[#FFEAA7] border-[#D4AF37] shadow-md'
                        : 'bg-[#FFFDFB] text-[#2D1518] border-[#D4AF37]/40 hover:bg-[#800A21]/5'
                    }`}
                  >
                    ✨ Uncertain
                  </button>
                </div>
              </div>

              {/* Guest Count & Dietary Preference */}
              {attending === 'yes' && (
                <div className="grid md:grid-cols-2 gap-4 pt-2">
                  <div>
                    <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                      Number of Guests Attending
                    </label>
                    <select
                      value={guestCount}
                      onChange={(e) => setGuestCount(Number(e.target.value))}
                      className="w-full px-4 py-3 rounded-xl border border-[#D4AF37]/60 text-sm font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21] bg-[#FFFDFB]"
                    >
                      {[1, 2, 3, 4, 5, 6, 7, 8].map((num) => (
                        <option key={num} value={num}>
                          {num} {num === 1 ? 'Guest' : 'Guests'}
                        </option>
                      ))}
                    </select>
                  </div>

                  <div>
                    <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                      Dietary Preference
                    </label>
                    <select
                      value={dietaryPref}
                      onChange={(e) => setDietaryPref(e.target.value as any)}
                      className="w-full px-4 py-3 rounded-xl border border-[#D4AF37]/60 text-sm font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21] bg-[#FFFDFB]"
                    >
                      <option value="veg">Pure Vegetarian Buffet</option>
                      <option value="jain">Jain Pure Veg</option>
                      <option value="any">Multi-Cuisine Delights</option>
                    </select>
                  </div>
                </div>
              )}

              {/* Heartfelt Blessing Textarea */}
              <div>
                <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                  Heartfelt Blessings & Wishes For The Couple
                </label>
                <textarea
                  rows={3}
                  placeholder="May Lord Ganesha shower infinite love, joy and prosperity on Suryakant & Aishwarya..."
                  value={blessingMessage}
                  onChange={(e) => setBlessingMessage(e.target.value)}
                  className="w-full px-4 py-3 rounded-xl border border-[#D4AF37]/60 text-sm font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21] bg-[#FFFDFB]"
                />
              </div>

              {/* Action Buttons */}
              <div className="pt-2 flex flex-col sm:flex-row items-center gap-4">
                <button
                  type="submit"
                  className="w-full sm:flex-1 py-3.5 rounded-full bg-[#800A21] text-[#FFEAA7] font-cinzel font-bold text-xs uppercase tracking-wider border border-[#D4AF37] shadow-lg hover:bg-[#580614] transition-all cursor-pointer flex items-center justify-center gap-2"
                >
                  <Send className="w-4 h-4" />
                  <span>Submit RSVP On Website</span>
                </button>

                <button
                  type="button"
                  onClick={handleWhatsAppRsvp}
                  className="w-full sm:flex-1 py-3.5 rounded-full bg-[#25D366] text-white font-poppins font-semibold text-xs uppercase tracking-wider shadow-md hover:bg-[#1EBE5A] transition-all cursor-pointer flex items-center justify-center gap-2"
                >
                  <MessageCircle className="w-4 h-4" />
                  <span>Direct WhatsApp RSVP</span>
                </button>
              </div>
            </form>
          )}
        </div>
      </div>
    </section>
  );
};
