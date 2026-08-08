import React from 'react';
import { CoupleDetails } from '../types';
import { Heart, Calendar, Clock, MapPin, Sparkles } from 'lucide-react';

interface HeroSectionProps {
  details: CoupleDetails;
}

export const HeroSection: React.FC<HeroSectionProps> = ({ details }) => {
  return (
    <section id="couple" className="relative py-12 md:py-20 px-4 overflow-hidden bg-gradient-to-b from-[#FFFDF9] via-[#FFF5EA] to-[#FFFDF9]">
      {/* Background Decorative Mandala Accent */}
      <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[500px] h-[500px] md:w-[750px] md:h-[750px] rounded-full bg-[radial-gradient(circle,_rgba(212,175,55,0.12)_0%,_transparent_70%)] pointer-events-none flex items-center justify-center">
        <div className="w-[80%] h-[80%] rounded-full border border-[#D4AF37]/20 animate-spin-slow" />
      </div>

      <div className="max-w-4xl mx-auto relative z-10 text-center">
        {/* Deity Blessing Header */}
        <div className="inline-flex items-center gap-2 px-5 py-2 rounded-full bg-gradient-to-r from-[#800A21] via-[#A31832] to-[#800A21] text-[#FFEAA7] text-xs md:text-sm font-semibold tracking-widest uppercase shadow-md border border-[#D4AF37]/60 mb-8 animate-float">
          <Sparkles className="w-4 h-4 text-[#FFEAA7]" />
          <span>{details.deityBlessing}</span>
          <Sparkles className="w-4 h-4 text-[#FFEAA7]" />
        </div>

        {/* Main Engagement Banner Card */}
        <div className="relative bg-white/95 backdrop-blur-md p-8 md:p-14 rounded-3xl border border-[#D4AF37]/40 shadow-xl box-shadow-gold">
          {/* Top Floral Corner Flourish */}
          <div className="absolute -top-3 -left-3 w-10 h-10 border-t-3 border-l-3 border-[#800A21] rounded-tl-xl pointer-events-none" />
          <div className="absolute -top-3 -right-3 w-10 h-10 border-t-3 border-r-3 border-[#800A21] rounded-tr-xl pointer-events-none" />
          <div className="absolute -bottom-3 -left-3 w-10 h-10 border-b-3 border-l-3 border-[#800A21] rounded-bl-xl pointer-events-none" />
          <div className="absolute -bottom-3 -right-3 w-10 h-10 border-b-3 border-r-3 border-[#800A21] rounded-br-xl pointer-events-none" />

          {/* Invitation Subheading */}
          <p className="text-xs md:text-sm font-marcellus text-[#800A21] uppercase tracking-[0.2em] mb-4">
            Together With Their Families • Joyfully Invite You To
          </p>

          <h2 className="font-script text-4xl md:text-6xl text-[#800A21] mb-6">
            The Engagement Ring Ceremony
          </h2>

          <div className="w-24 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto mb-10" />

          {/* Groom & Bride Grid */}
          <div className="grid md:grid-cols-5 gap-6 md:gap-4 items-center">
            {/* Groom Details */}
            <div className="md:col-span-2 p-6 rounded-2xl bg-[#FFF9F0] border border-[#D4AF37]/35 hover:border-[#800A21]/40 transition-all">
              <span className="text-[10px] uppercase font-marcellus text-[#C5A059] tracking-widest block mb-1">
                Groom-To-Be
              </span>
              <h3 className="font-cinzel text-3xl md:text-4xl font-bold text-[#800A21] mb-2">
                {details.groomName}
              </h3>
              <p className="text-xs text-[#2D1518]/80 font-poppins leading-relaxed">
                S/O {details.groomParents}
              </p>
            </div>

            {/* Middle Ampersand / Rings Motif */}
            <div className="md:col-span-1 flex flex-col items-center justify-center my-2 md:my-0">
              <div className="w-14 h-14 rounded-full bg-gradient-to-br from-[#800A21] to-[#A31832] border border-[#FFEAA7] flex items-center justify-center text-white shadow-lg">
                <Heart className="w-7 h-7 fill-red-500 text-red-500 animate-pulse drop-shadow-sm" />
              </div>
              <span className="font-script text-3xl text-[#800A21] mt-1">&</span>
            </div>

            {/* Bride Details */}
            <div className="md:col-span-2 p-6 rounded-2xl bg-[#FFF9F0] border border-[#D4AF37]/35 hover:border-[#800A21]/40 transition-all">
              <span className="text-[10px] uppercase font-marcellus text-[#C5A059] tracking-widest block mb-1">
                Bride-To-Be
              </span>
              <h3 className="font-cinzel text-3xl md:text-4xl font-bold text-[#800A21] mb-2">
                {details.brideName}
              </h3>
              <p className="text-xs text-[#2D1518]/80 font-poppins leading-relaxed">
                D/O {details.brideParents}
              </p>
            </div>
          </div>

          {/* Date & Time Highlights */}
          <div className="mt-10 pt-8 border-t border-[#D4AF37]/25 grid sm:grid-cols-2 gap-4 max-w-xl mx-auto">
            <div className="flex items-center justify-center gap-3 p-3.5 rounded-xl bg-[#800A21]/5 border border-[#800A21]/15">
              <Calendar className="w-5 h-5 text-[#800A21]" />
              <div className="text-left">
                <span className="text-[10px] text-[#C5A059] font-marcellus uppercase block">Date</span>
                <span className="text-xs font-bold text-[#800A21] font-poppins">{details.dateDisplay}</span>
              </div>
            </div>

            <div className="flex items-center justify-center gap-3 p-3.5 rounded-xl bg-[#800A21]/5 border border-[#800A21]/15">
              <Clock className="w-5 h-5 text-[#800A21]" />
              <div className="text-left">
                <span className="text-[10px] text-[#C5A059] font-marcellus uppercase block">Shubh Muhurat</span>
                <span className="text-xs font-bold text-[#800A21] font-poppins">{details.timeDisplay}</span>
              </div>
            </div>
          </div>

          {/* Location Badge */}
          <div className="mt-6 inline-flex items-center gap-2 text-xs font-poppins text-[#2D1518] font-medium">
            <MapPin className="w-4 h-4 text-[#800A21]" />
            <span>{details.venueName}, {details.venueAddress}</span>
          </div>
        </div>
      </div>
    </section>
  );
};
