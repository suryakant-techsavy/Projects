import React, { useState } from 'react';
import { CoupleDetails } from '../types';
import { Menu, X, Share2, Sparkles } from 'lucide-react';

interface NavbarProps {
  details: CoupleDetails;
  onOpenHostCustomizer?: () => void;
  onShare: () => void;
}

export const Navbar: React.FC<NavbarProps> = ({ details, onShare }) => {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  const navLinks = [
    { name: "The Couple", href: "#couple" },
    { name: "Countdown", href: "#countdown" },
    { name: "Venue", href: "#venue" },
  ];

  return (
    <header className="sticky top-0 z-30 bg-[#FFFDFB]/95 backdrop-blur-md border-b border-[#D4AF37]/30 shadow-sm transition-all">
      <div className="max-w-6xl mx-auto px-4 sm:px-6 h-16 flex items-center justify-between">
        {/* Logo / Monogram */}
        <a href="#" className="flex items-center gap-2 group">
          <div className="w-9 h-9 rounded-full bg-[#800A21] text-[#FFEAA7] border border-[#D4AF37]/60 flex items-center justify-center font-cinzel font-bold text-sm shadow-sm group-hover:scale-105 transition-transform">
            {details.groomName.charAt(0)}&{details.brideName.charAt(0)}
          </div>
          <div className="hidden sm:block">
            <span className="font-cinzel text-base font-bold text-[#800A21] tracking-wider block leading-tight">
              {details.groomName} & {details.brideName}
            </span>
            <span className="text-[10px] text-[#C5A059] uppercase tracking-widest block font-marcellus">
              Engagement Invitation
            </span>
          </div>
        </a>

        {/* Desktop Navigation Links */}
        <nav className="hidden lg:flex items-center gap-6 text-xs uppercase tracking-widest font-marcellus text-[#800A21]">
          {navLinks.map((link) => (
            <a
              key={link.name}
              href={link.href}
              className="hover:text-[#C5A059] transition-colors relative py-1 after:content-[''] after:absolute after:bottom-0 after:left-0 after:w-0 after:h-[2px] after:bg-[#C5A059] hover:after:w-full after:transition-all"
            >
              {link.name}
            </a>
          ))}
        </nav>

        {/* Action Controls */}
        <div className="flex items-center gap-2">
          {/* Mobile Menu Toggle */}
          <button
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            className="lg:hidden p-2 rounded-lg text-[#4A121A] hover:bg-[#4A121A]/10 cursor-pointer"
            aria-label="Toggle Navigation Menu"
          >
            {mobileMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
          </button>
        </div>
      </div>

      {/* Mobile Drawer Navigation */}
      {mobileMenuOpen && (
        <div className="lg:hidden bg-[#FAF8F5] border-b border-[#D4AF37]/25 px-6 py-4 shadow-xl space-y-3 animate-fadeIn">
          {navLinks.map((link) => (
            <a
              key={link.name}
              href={link.href}
              onClick={() => setMobileMenuOpen(false)}
              className="block py-2 text-sm font-marcellus uppercase tracking-wider text-[#4A121A] hover:text-[#C5A059] border-b border-[#D4AF37]/10"
            >
              {link.name}
            </a>
          ))}
          <div className="pt-2 flex justify-between items-center text-xs text-[#C5A059]">
            <span>{details.groomName} & {details.brideName} • Engagement 2026</span>
            <Sparkles className="w-4 h-4 text-[#D4AF37]" />
          </div>
        </div>
      )}
    </header>
  );
};
