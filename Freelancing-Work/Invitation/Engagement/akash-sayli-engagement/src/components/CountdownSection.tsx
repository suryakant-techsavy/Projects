import React, { useState, useEffect } from 'react';
import { CoupleDetails, TimeLeft } from '../types';
import { Sparkles } from 'lucide-react';

interface CountdownSectionProps {
  details: CoupleDetails;
}

export const CountdownSection: React.FC<CountdownSectionProps> = ({ details }) => {
  const [timeLeft, setTimeLeft] = useState<TimeLeft>({
    days: 0,
    hours: 0,
    minutes: 0,
    seconds: 0,
    isPassed: false
  });

  useEffect(() => {
    const calculateTimeLeft = () => {
      const targetTime = new Date(details.engagementDate).getTime();
      const currentTime = new Date().getTime();
      const difference = targetTime - currentTime;

      if (difference <= 0) {
        setTimeLeft({
          days: 0,
          hours: 0,
          minutes: 0,
          seconds: 0,
          isPassed: true
        });
      } else {
        const days = Math.floor(difference / (1000 * 60 * 60 * 24));
        const hours = Math.floor((difference % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        const minutes = Math.floor((difference % (1000 * 60 * 60)) / (1000 * 60));
        const seconds = Math.floor((difference % (1000 * 60)) / 1000);

        setTimeLeft({
          days,
          hours,
          minutes,
          seconds,
          isPassed: false
        });
      }
    };

    calculateTimeLeft();
    const interval = setInterval(calculateTimeLeft, 1000);
    return () => clearInterval(interval);
  }, [details.engagementDate]);

  return (
    <section id="countdown" className="py-14 px-4 bg-gradient-to-r from-[#FFFDFB] via-[#FFF5EA] to-[#FFFDFB] text-[#2D1518] relative overflow-hidden border-y border-[#D4AF37]/40">
      {/* Decorative Gold Radial Background */}
      <div className="absolute inset-0 bg-[radial-gradient(circle_at_center,_rgba(212,175,55,0.15)_0%,_transparent_75%)] pointer-events-none" />

      <div className="max-w-4xl mx-auto text-center relative z-10">
        <div className="flex justify-center items-center gap-2 mb-2">
          <div className="h-[1px] w-12 bg-[#800A21]/30" />
          <Sparkles className="w-4 h-4 text-[#800A21]" />
          <span className="text-xs font-marcellus uppercase tracking-[0.25em] text-[#C5A059] font-bold">
            Save The Date
          </span>
          <Sparkles className="w-4 h-4 text-[#800A21]" />
          <div className="h-[1px] w-12 bg-[#800A21]/30" />
        </div>

        <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
          Counting Down To Forever
        </h2>

        <p className="text-xs md:text-sm text-[#2D1518]/80 max-w-lg mx-auto font-poppins mb-8">
          We invite you to celebrate the union of our souls and the beginning of our new journey together.
        </p>

        {timeLeft.isPassed ? (
          <div className="p-8 rounded-2xl bg-white border-2 border-[#D4AF37] max-w-xl mx-auto shadow-xl animate-pulse-glow">
            <h3 className="font-script text-3xl md:text-4xl text-[#800A21] mb-3">
              💖 Happily Engaged! 💖
            </h3>
            <p className="text-sm md:text-base text-[#2D1518] font-poppins leading-relaxed">
              🎉 Thank you for celebrating with us! 🎉 <br />
              <span className="text-xs text-[#2D1518]/80 block mt-2">
                Your presence & heartfelt blessings made our Engagement truly memorable and blessed!
              </span>
            </p>
          </div>
        ) : (
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 md:gap-6 max-w-2xl mx-auto">
            {/* Days Box */}
            <div className="flex flex-col items-center justify-center p-4 md:p-6 rounded-2xl bg-white border-2 border-[#D4AF37]/50 shadow-md transform hover:-translate-y-1 transition-transform">
              <span className="font-cinzel text-3xl md:text-5xl font-bold text-[#800A21]">
                {String(timeLeft.days).padStart(2, '0')}
              </span>
              <span className="text-[10px] md:text-xs uppercase font-marcellus text-[#C5A059] font-bold tracking-widest mt-1">
                Days
              </span>
            </div>

            {/* Hours Box */}
            <div className="flex flex-col items-center justify-center p-4 md:p-6 rounded-2xl bg-white border-2 border-[#D4AF37]/50 shadow-md transform hover:-translate-y-1 transition-transform">
              <span className="font-cinzel text-3xl md:text-5xl font-bold text-[#800A21]">
                {String(timeLeft.hours).padStart(2, '0')}
              </span>
              <span className="text-[10px] md:text-xs uppercase font-marcellus text-[#C5A059] font-bold tracking-widest mt-1">
                Hours
              </span>
            </div>

            {/* Minutes Box */}
            <div className="flex flex-col items-center justify-center p-4 md:p-6 rounded-2xl bg-white border-2 border-[#D4AF37]/50 shadow-md transform hover:-translate-y-1 transition-transform">
              <span className="font-cinzel text-3xl md:text-5xl font-bold text-[#800A21]">
                {String(timeLeft.minutes).padStart(2, '0')}
              </span>
              <span className="text-[10px] md:text-xs uppercase font-marcellus text-[#C5A059] font-bold tracking-widest mt-1">
                Minutes
              </span>
            </div>

            {/* Seconds Box */}
            <div className="flex flex-col items-center justify-center p-4 md:p-6 rounded-2xl bg-white border-2 border-[#D4AF37]/50 shadow-md transform hover:-translate-y-1 transition-transform">
              <span className="font-cinzel text-3xl md:text-5xl font-bold text-[#800A21]">
                {String(timeLeft.seconds).padStart(2, '0')}
              </span>
              <span className="text-[10px] md:text-xs uppercase font-marcellus text-[#C5A059] font-bold tracking-widest mt-1">
                Seconds
              </span>
            </div>
          </div>
        )}
      </div>
    </section>
  );
};
