import React from 'react';
import { EventItem } from '../types';
import { Coffee, Sparkles, Heart, Utensils, Camera, Clock } from 'lucide-react';

interface ScheduleSectionProps {
  events: EventItem[];
}

export const ScheduleSection: React.FC<ScheduleSectionProps> = ({ events }) => {
  const getIcon = (iconName: string) => {
    switch (iconName) {
      case 'Coffee': return <Coffee className="w-5 h-5" />;
      case 'Sparkles': return <Sparkles className="w-5 h-5" />;
      case 'Heart': return <Heart className="w-5 h-5 fill-current" />;
      case 'Utensils': return <Utensils className="w-5 h-5" />;
      case 'Camera': return <Camera className="w-5 h-5" />;
      default: return <Clock className="w-5 h-5" />;
    }
  };

  return (
    <section id="schedule" className="py-16 md:py-24 px-4 bg-[#FFFDFB] relative">
      <div className="max-w-4xl mx-auto">
        <div className="text-center mb-12">
          <span className="text-xs uppercase font-marcellus text-[#C5A059] tracking-[0.25em] block mb-2">
            Auspicious Itinerary
          </span>
          <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
            Engagement Day Timeline
          </h2>
          <div className="w-20 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto" />
        </div>

        {/* Timeline Container */}
        <div className="relative pl-6 md:pl-0">
          {/* Vertical Timeline Central Line */}
          <div className="absolute top-4 bottom-4 left-6 md:left-1/2 -translate-x-1/2 w-[2px] bg-gradient-to-b from-[#800A21] via-[#D4AF37] to-[#800A21]/20" />

          <div className="space-y-8 relative">
            {events.map((event, index) => {
              const isEven = index % 2 === 0;

              return (
                <div
                  key={event.id}
                  className={`relative flex flex-col md:flex-row items-start md:items-center ${
                    isEven ? 'md:flex-row-reverse' : ''
                  }`}
                >
                  {/* Timeline Badge Node */}
                  <div className="absolute left-0 md:left-1/2 -translate-x-1/2 top-0 md:top-1/2 md:-translate-y-1/2 w-10 h-10 rounded-full bg-[#800A21] border-2 border-[#D4AF37] text-[#FFEAA7] flex items-center justify-center shadow-lg z-10">
                    {getIcon(event.iconName)}
                  </div>

                  {/* Content Card */}
                  <div className={`w-full md:w-[45%] pl-12 md:pl-0 ${isEven ? 'md:pr-10 md:text-right' : 'md:pl-10 md:text-left'}`}>
                    <div className="bg-white p-6 rounded-2xl border border-[#D4AF37]/35 shadow-md hover:shadow-xl hover:border-[#800A21]/40 transition-all group">
                      <div className={`inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-[#FFF9F0] text-[#800A21] text-xs font-semibold font-poppins mb-2 border border-[#D4AF37]/30 ${isEven ? 'md:ml-auto' : ''}`}>
                        <Clock className="w-3.5 h-3.5" />
                        <span>{event.time}</span>
                      </div>

                      <h3 className="font-cinzel text-xl font-bold text-[#800A21] group-hover:text-[#A31832] transition-colors">
                        {event.title}
                      </h3>

                      <p className="text-xs font-marcellus text-[#C5A059] uppercase tracking-wider mb-2 font-medium">
                        {event.subTitle}
                      </p>

                      <p className="text-xs text-[#2D1518]/80 font-poppins leading-relaxed">
                        {event.description}
                      </p>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      </div>
    </section>
  );
};
