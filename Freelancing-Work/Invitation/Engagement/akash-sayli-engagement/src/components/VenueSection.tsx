import React from 'react';
import { CoupleDetails } from '../types';
import { MapPin } from 'lucide-react';

interface VenueSectionProps {
  details: CoupleDetails;
}

export const VenueSection: React.FC<VenueSectionProps> = ({ details }) => {
  return (
    <section id="venue" className="py-16 md:py-24 px-4 bg-gradient-to-b from-[#FFFDF9] via-[#FFF5EA] to-[#FFFDF9] relative">
      <div className="max-w-4xl mx-auto text-center">
        <span className="text-xs uppercase font-marcellus text-[#C5A059] tracking-[0.25em] block mb-2">
          Sanctuary Of Celebration
        </span>

        <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
          The Engagement Venue
        </h2>

        <div className="w-20 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto mb-8" />

        <div className="bg-white/95 rounded-3xl p-6 md:p-10 border border-[#D4AF37]/40 shadow-xl box-shadow-gold">
          {/* Hall Name & Address */}
          <div className="max-w-xl mx-auto mb-8">
            <div className="inline-flex p-3 rounded-full bg-[#800A21]/10 text-[#800A21] mb-3">
              <MapPin className="w-6 h-6 text-[#800A21]" />
            </div>

            <h3 className="font-cinzel text-2xl md:text-3xl font-bold text-[#800A21] mb-2">
              {details.venueName}
            </h3>

            <p className="text-sm text-[#2D1518]/80 font-poppins leading-relaxed">
              {details.venueAddress}
            </p>
          </div>

          {/* Embedded Google Map */}
          <div className="relative rounded-2xl overflow-hidden border border-[#D4AF37]/40 shadow-inner h-[280px] md:h-[380px] bg-[#FFFDF9]">
            <iframe
              src={details.venueMapUrl}
              width="100%"
              height="100%"
              style={{ border: 0 }}
              allowFullScreen={false}
              loading="lazy"
              referrerPolicy="no-referrer-when-downgrade"
              title="Engagement Venue Map"
              className="w-full h-full"
            />
          </div>
        </div>
      </div>
    </section>
  );
};
