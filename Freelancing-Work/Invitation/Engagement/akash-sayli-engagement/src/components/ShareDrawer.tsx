import React, { useState } from 'react';
import { CoupleDetails } from '../types';
import { X, Share2, Copy, Check, MessageCircle, Mail, Download, Sparkles } from 'lucide-react';

interface ShareDrawerProps {
  details: CoupleDetails;
  isOpen: boolean;
  onClose: () => void;
}

export const ShareDrawer: React.FC<ShareDrawerProps> = ({ details, isOpen, onClose }) => {
  const [copied, setCopied] = useState(false);

  if (!isOpen) return null;

  const currentUrl = window.location.href;
  const shareText = `!! ${details.openingBlessing} !!\n\nWe cordially invite you to celebrate the Engagement Ceremony of\n${details.groomName} & ${details.brideName} 💖\n\n📅 Date: ${details.dateDisplay}\n⏰ Shubh Muhurat: ${details.timeDisplay}\n📍 Venue: ${details.venueName}, ${details.venueAddress}\n\nView the online invitation card, countdown, gallery & RSVP here:\n${currentUrl}`;

  const handleCopy = () => {
    navigator.clipboard.writeText(shareText);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  const handleWhatsAppShare = () => {
    const whatsappUrl = `https://wa.me/?text=${encodeURIComponent(shareText)}`;
    window.open(whatsappUrl, '_blank');
  };

  const handleNativeShare = () => {
    if (navigator.share) {
      navigator.share({
        title: `Engagement Invitation - ${details.groomName} & ${details.brideName}`,
        text: shareText,
        url: currentUrl,
      }).catch((err) => console.log('Share canceled', err));
    } else {
      handleCopy();
    }
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/70 backdrop-blur-sm flex items-center justify-center p-4">
      <div className="bg-[#FFFDFB] rounded-3xl p-6 md:p-8 max-w-md w-full border border-[#D4AF37]/50 shadow-2xl relative">
        <button
          onClick={onClose}
          className="absolute top-4 right-4 text-[#800A21] p-1.5 rounded-full hover:bg-[#800A21]/10 cursor-pointer"
        >
          <X className="w-5 h-5" />
        </button>

        <div className="text-center mb-6">
          <div className="w-12 h-12 rounded-full bg-[#800A21] text-[#FFEAA7] border border-[#D4AF37]/60 flex items-center justify-center mx-auto mb-2 shadow-md">
            <Share2 className="w-5 h-5" />
          </div>
          <h3 className="font-cinzel text-xl font-bold text-[#800A21]">
            Share Engagement Invitation
          </h3>
          <p className="text-xs text-[#2D1518]/70 font-poppins mt-1">
            Send the online invitation card with countdown & location to family and friends
          </p>
        </div>

        <div className="space-y-3">
          {/* Share on WhatsApp */}
          <button
            onClick={handleWhatsAppShare}
            className="w-full py-3 px-4 rounded-xl bg-[#25D366] text-white font-poppins font-semibold text-xs uppercase tracking-wider shadow-md hover:bg-[#1EBE5A] transition-all cursor-pointer flex items-center justify-center gap-2"
          >
            <MessageCircle className="w-4 h-4" />
            <span>Share via WhatsApp</span>
          </button>

          {/* Copy Full Invitation Text */}
          <button
            onClick={handleCopy}
            className="w-full py-3 px-4 rounded-xl bg-[#800A21] text-[#FFEAA7] font-cinzel font-bold text-xs uppercase tracking-wider border border-[#D4AF37]/50 shadow-md hover:bg-[#580614] transition-all cursor-pointer flex items-center justify-center gap-2"
          >
            {copied ? <Check className="w-4 h-4 text-green-400" /> : <Copy className="w-4 h-4" />}
            <span>{copied ? 'Copied To Clipboard!' : 'Copy Invitation Message & Link'}</span>
          </button>

          {/* Native Web Share */}
          {typeof navigator !== 'undefined' && 'share' in navigator && (
            <button
              onClick={handleNativeShare}
              className="w-full py-3 px-4 rounded-xl bg-white text-[#800A21] border border-[#800A21]/30 font-poppins text-xs font-semibold hover:bg-[#800A21]/5 transition-all cursor-pointer flex items-center justify-center gap-2"
            >
              <Share2 className="w-4 h-4" />
              <span>More Share Options</span>
            </button>
          )}
        </div>

        <div className="mt-6 p-3 rounded-xl bg-[#FFF9F0] border border-[#D4AF37]/30 text-center">
          <p className="text-[11px] text-[#800A21] font-poppins">
            ✨ Tip: You can bookmark this page or share the URL directly.
          </p>
        </div>
      </div>
    </div>
  );
};
