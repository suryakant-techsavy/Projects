import React, { useState } from 'react';
import { RsvpResponse } from '../types';
import { Heart, Sparkles, MessageSquare, Flame } from 'lucide-react';

interface BlessingsWallProps {
  rsvps: RsvpResponse[];
}

export const BlessingsWall: React.FC<BlessingsWallProps> = ({ rsvps }) => {
  // Reaction counter state per RSVP card
  const [reactions, setReactions] = useState<Record<string, number>>({});

  const handleHeartClick = (id: string) => {
    setReactions(prev => ({
      ...prev,
      [id]: (prev[id] || 0) + 1
    }));
  };

  return (
    <section id="blessings" className="py-16 md:py-24 px-4 bg-[#FFFDFB] relative">
      <div className="max-w-5xl mx-auto text-center">
        <span className="text-xs uppercase font-marcellus text-[#C5A059] tracking-[0.25em] block mb-2">
          Wall Of Well Wishes
        </span>

        <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
          Guest Blessings & Love
        </h2>

        <p className="text-xs md:text-sm text-[#2D1518]/70 font-poppins max-w-lg mx-auto mb-8">
          Read warm wishes from friends and family celebrating Suryakant & Aishwarya's sagaai ring ceremony!
        </p>

        <div className="w-20 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto mb-12" />

        {/* Blessings Card Grid */}
        <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6 text-left">
          {rsvps.map((rsvp) => {
            const currentHearts = (reactions[rsvp.id] || 0) + 1;

            return (
              <div
                key={rsvp.id}
                className="bg-white p-6 rounded-2xl border border-[#D4AF37]/40 shadow-md hover:shadow-xl transition-all duration-300 flex flex-col justify-between relative group"
              >
                {/* Card Top Icon */}
                <div>
                  <div className="flex items-center justify-between mb-3">
                    <span className="inline-flex items-center gap-1 text-[11px] font-semibold text-[#800A21] bg-[#FFF9F0] px-2.5 py-1 rounded-full border border-[#D4AF37]/35">
                      <Sparkles className="w-3 h-3 text-[#D4AF37]" />
                      <span>Attending ({rsvp.guestCount} {rsvp.guestCount === 1 ? 'Guest' : 'Guests'})</span>
                    </span>

                    <button
                      onClick={() => handleHeartClick(rsvp.id)}
                      className="flex items-center gap-1 text-xs text-[#800A21] hover:text-[#A31832] bg-[#FFF9F0] hover:bg-[#800A21]/10 px-2 py-1 rounded-full border border-[#D4AF37]/35 transition-colors cursor-pointer"
                      title="Send Tilak / Blessings"
                    >
                      <Heart className="w-3.5 h-3.5 fill-[#800A21]" />
                      <span>{currentHearts}</span>
                    </button>
                  </div>

                  <p className="text-xs text-[#2D1518]/85 font-poppins leading-relaxed italic mb-4">
                    "{rsvp.blessingMessage || 'Wishing the lovely couple immense happiness, affection, and togetherness for life!'}"
                  </p>
                </div>

                {/* Card Footer: Guest Name */}
                <div className="pt-3 border-t border-[#D4AF37]/20 flex items-center justify-between">
                  <div className="flex items-center gap-2">
                    <div className="w-8 h-8 rounded-full bg-gradient-to-br from-[#800A21] to-[#A31832] text-[#FFEAA7] flex items-center justify-center font-cinzel text-xs font-bold border border-[#D4AF37]">
                      {rsvp.name.charAt(0)}
                    </div>
                    <div>
                      <h4 className="font-cinzel text-sm font-bold text-[#800A21]">
                        {rsvp.name}
                      </h4>
                      <span className="text-[10px] text-[#C5A059] font-marcellus block">
                        {new Date(rsvp.submittedAt).toLocaleDateString(undefined, { month: 'short', day: 'numeric' })}
                      </span>
                    </div>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
      </div>
    </section>
  );
};
