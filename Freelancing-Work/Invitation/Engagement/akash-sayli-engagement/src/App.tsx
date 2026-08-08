import React, { useState, useEffect, useRef } from 'react';
import { CoupleDetails } from './types';
import { initialCoupleDetails } from './data/defaultData';

import { WelcomeOverlay } from './components/WelcomeOverlay';
import { AudioPlayer, AudioPlayerRef } from './components/AudioPlayer';
import { PetalsRain } from './components/PetalsRain';
import { Navbar } from './components/Navbar';
import { HeroSection } from './components/HeroSection';
import { CountdownSection } from './components/CountdownSection';
import { VenueSection } from './components/VenueSection';
import { ShareDrawer } from './components/ShareDrawer';
import { Footer } from './components/Footer';

export default function App() {
  // Couple Details with LocalStorage persistence
  const [details, setDetails] = useState<CoupleDetails>(() => {
    try {
      const saved = localStorage.getItem('engagement_details_v12');
      if (saved) {
        const parsed = JSON.parse(saved);
        return {
          ...initialCoupleDetails,
          ...parsed,
          audioUrl: parsed.audioUrl || '/tu-chahiye.mp3',
          audioTitle: parsed.audioTitle || 'Tu Chahiye'
        };
      }
      return {
        ...initialCoupleDetails,
        audioUrl: '/tu-chahiye.mp3',
        audioTitle: 'Tu Chahiye'
      };
    } catch {
      return {
        ...initialCoupleDetails,
        audioUrl: '/tu-chahiye.mp3',
        audioTitle: 'Tu Chahiye'
      };
    }
  });

  // Welcome Overlay and Audio states
  const [isOverlayOpen, setIsOverlayOpen] = useState(true);
  const [autoPlayAudio, setAutoPlayAudio] = useState(false);

  // Audio player ref for direct click gesture play
  const audioPlayerRef = useRef<AudioPlayerRef | null>(null);

  // Modals
  const [isShareDrawerOpen, setIsShareDrawerOpen] = useState(false);

  // Save to LocalStorage when states update
  useEffect(() => {
    try {
      localStorage.setItem('engagement_details_v12', JSON.stringify(details));
    } catch (e) {
      console.error(e);
    }
  }, [details]);

  const handleEnterInvitation = () => {
    setIsOverlayOpen(false);
    setAutoPlayAudio(true);
    if (audioPlayerRef.current) {
      audioPlayerRef.current.play();
    }
  };

  return (
    <div className="min-h-screen bg-[#FFFDFB] text-[#2D1518] font-poppins selection:bg-[#D4AF37] selection:text-white relative">
      {/* Showering Petals Theme */}
      <PetalsRain />

      {/* Sacred Welcome Overlay */}
      <WelcomeOverlay
        details={details}
        isOpen={isOverlayOpen}
        onEnter={handleEnterInvitation}
      />

      {/* Background Audio Player */}
      <AudioPlayer
        ref={audioPlayerRef}
        audioUrl={details.audioUrl}
        audioTitle={details.audioTitle}
        autoPlayTriggered={autoPlayAudio}
      />

      {/* Sticky Header Navigation */}
      <Navbar
        details={details}
        onShare={() => setIsShareDrawerOpen(true)}
      />

      {/* Main Invitation Sections */}
      <main>
        <HeroSection details={details} />
        <CountdownSection details={details} />
        <VenueSection details={details} />
      </main>

      {/* Footer */}
      <Footer details={details} />

      {/* Share Drawer */}
      <ShareDrawer
        details={details}
        isOpen={isShareDrawerOpen}
        onClose={() => setIsShareDrawerOpen(false)}
      />
    </div>
  );
}
