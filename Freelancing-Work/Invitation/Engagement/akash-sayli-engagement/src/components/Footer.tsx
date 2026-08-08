import React from 'react';
import { CoupleDetails } from '../types';

interface FooterProps {
  details: CoupleDetails;
  onOpenHostCustomizer?: () => void;
}

export const Footer: React.FC<FooterProps> = ({ details }) => {
  return (
    <footer className="bg-gradient-to-b from-[#FFFDF9] via-[#FFF5EA] to-[#FFEBD6] text-[#2D1518] py-12 px-4 border-t-2 border-[#D4AF37]/40 relative overflow-hidden">
      {/* Background Decorative Circles */}
      <div className="absolute top-0 left-1/2 -translate-x-1/2 w-full h-full bg-[radial-gradient(ellipse_at_top,_rgba(212,175,55,0.15)_0%,_transparent_70%)] pointer-events-none" />

      <div className="max-w-4xl mx-auto text-center relative z-10 space-y-6">
        {/* Monogram Badge */}
        <div className="w-14 h-14 rounded-full bg-[#800A21] border-2 border-[#D4AF37] text-[#FFEAA7] flex items-center justify-center font-cinzel font-bold text-lg mx-auto shadow-lg">
          {details.groomName.charAt(0)}&{details.brideName.charAt(0)}
        </div>

        <div>
          <h3 className="font-script text-3xl md:text-4xl text-[#800A21]">
            {details.groomName} & {details.brideName}
          </h3>
          <p className="text-xs font-marcellus text-[#C5A059] font-bold uppercase tracking-[0.2em] mt-1">
            Engagement Ceremony • {details.dateDisplay}
          </p>
        </div>

        <div className="w-24 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto" />

        <p className="text-sm font-poppins text-[#2D1518]/80 italic max-w-md mx-auto">
          "With 💕 Heartfelt Wishes & Blessings"
        </p>

        <div className="pt-4 flex flex-wrap justify-center items-center gap-6 text-xs font-marcellus text-[#800A21] font-semibold">
          <a href="#couple" className="hover:text-[#A31832] transition-colors">The Couple</a>
          <span>•</span>
          <a href="#countdown" className="hover:text-[#A31832] transition-colors">Countdown</a>
          <span>•</span>
          <a href="#venue" className="hover:text-[#A31832] transition-colors">Venue Map</a>
        </div>

        <div className="pt-6 border-t border-[#D4AF37]/30 flex flex-col sm:flex-row items-center justify-between gap-4 text-xs text-[#2D1518]/70 font-poppins">
          <span>{details.deityBlessing}</span>
          <span>Designed with ❤️ for Engagement Celebrations</span>
        </div>
      </div>
    </footer>
  );
};
