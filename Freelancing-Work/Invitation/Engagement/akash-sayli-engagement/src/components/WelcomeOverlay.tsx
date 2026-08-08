import React from 'react';
import { CoupleDetails } from '../types';
import { Sparkles, Heart } from 'lucide-react';

interface WelcomeOverlayProps {
  details: CoupleDetails;
  onEnter: () => void;
  isOpen: boolean;
}

export const WelcomeOverlay: React.FC<WelcomeOverlayProps> = ({ details, onEnter, isOpen }) => {
  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex flex-col items-center justify-center bg-gradient-to-b from-[#FFFDF8] via-[#FFF6EB] to-[#FFF0DE] text-[#2D1518] px-4 text-center transition-all duration-1000 overflow-y-auto">
      {/* Decorative Golden Mandala Outer Ring */}
      <div className="absolute w-[350px] h-[350px] md:w-[550px] md:h-[550px] rounded-full border border-[#D4AF37]/25 animate-spin-slow pointer-events-none flex items-center justify-center">
        <div className="w-[85%] h-[85%] rounded-full border border-dashed border-[#D4AF37]/35" />
      </div>

      <div className="relative z-10 max-w-lg w-full bg-white/95 backdrop-blur-md p-8 md:p-10 rounded-3xl border-2 border-[#D4AF37]/60 shadow-2xl my-auto">
        {/* Divine Ganesh Motif Header */}
        <div className="inline-block px-4 py-1.5 rounded-full bg-[#FFF9F0] border border-[#D4AF37] text-xs md:text-sm font-semibold tracking-widest text-[#800A21] mb-6 shadow-sm">
          {details.openingBlessing}
        </div>

        {/* Ganesha / Om Golden Vector Graphic Icon */}
        <div className="flex justify-center mb-5">
          <div className="relative w-24 h-24 rounded-full bg-gradient-to-br from-[#FFF5EA] via-[#FFEAA7] to-[#F5D77F] border-2 border-[#D4AF37] p-2 flex items-center justify-center shadow-md group">
            <svg viewBox="0 0 100 100" className="w-16 h-16 fill-[#800A21] drop-shadow-sm">
              <path d="M50 10 C30 10 20 25 20 40 C20 55 35 65 50 65 C65 65 80 55 80 40 C80 25 70 10 50 10 Z M50 20 C60 20 70 28 70 38 C70 48 60 55 50 55 C40 55 30 48 30 38 C30 28 40 20 50 20 Z" opacity="0.2"/>
              <circle cx="50" cy="35" r="8" fill="#800A21" />
              <path d="M45 45 Q50 65 60 70 Q68 74 65 80 Q62 85 52 82 Q42 78 40 60 L45 45 Z" fill="#800A21" />
              <circle cx="50" cy="22" r="3" fill="#D4AF37" />
              <path d="M35 30 Q50 15 65 30" stroke="#800A21" strokeWidth="3" fill="none" />
            </svg>
            <Sparkles className="absolute -top-1 -right-1 w-5 h-5 text-[#800A21] animate-pulse" />
          </div>
        </div>

        <p className="text-xs md:text-sm text-[#C5A059] uppercase tracking-widest font-marcellus mb-2 font-bold">
          Cordially Inviting You To The Sagaai Ceremony
        </p>

        {/* Couple Names */}
        <div className="my-6">
          <h1 className="font-cinzel text-3xl md:text-5xl font-bold tracking-tight text-[#800A21] mb-2">
            <span>{details.groomName.charAt(0)}</span>
            {details.groomName.slice(1)}
            <span className="font-script text-4xl md:text-6xl text-[#D4AF37] mx-3 inline-block font-normal">&</span>
            <span>{details.brideName.charAt(0)}</span>
            {details.brideName.slice(1)}
          </h1>
          <div className="flex items-center justify-center gap-2 text-xs text-[#800A21]/80 font-marcellus mt-3">
            <div className="h-[1px] w-12 bg-gradient-to-r from-transparent to-[#D4AF37]" />
            <Heart className="w-4 h-4 text-red-600 fill-red-600" />
            <span>TWO HEARTS • ONE ENGAGEMENT JOURNEY</span>
            <div className="h-[1px] w-12 bg-gradient-to-l from-transparent to-[#D4AF37]" />
          </div>
        </div>

        <p className="text-xs md:text-sm text-[#2D1518]/80 italic font-poppins max-w-sm mx-auto mb-8 leading-relaxed">
          Join us as we exchange rings and celebrate the sacred union of our souls and families!
        </p>

        {/* Enter Invitation Button */}
        <button
          onClick={onEnter}
          className="group relative inline-flex items-center justify-center gap-3 px-8 py-3.5 rounded-full bg-gradient-to-r from-[#800A21] via-[#A31832] to-[#800A21] text-[#FFEAA7] font-cinzel font-bold text-sm tracking-wider border border-[#D4AF37] shadow-xl hover:shadow-2xl hover:border-white transition-all duration-300 transform hover:-translate-y-0.5 active:translate-y-0 cursor-pointer"
        >
          <Sparkles className="w-4 h-4 text-[#FFEAA7] group-hover:scale-125 transition-transform" />
          <span>OPEN ENGAGEMENT INVITATION</span>
          <div className="absolute -inset-0.5 rounded-full bg-[#FFEAA7]/20 blur-sm opacity-0 group-hover:opacity-100 transition-opacity pointer-events-none" />
        </button>
      </div>
    </div>
  );
};
