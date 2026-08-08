import React, { useRef, useEffect, useState, useImperativeHandle, forwardRef } from 'react';

interface AudioPlayerProps {
  audioUrl: string;
  audioTitle: string;
  autoPlayTriggered: boolean;
}

export interface AudioPlayerRef {
  play: () => Promise<void>;
  pause: () => void;
}

export const AudioPlayer = forwardRef<AudioPlayerRef, AudioPlayerProps>(
  ({ audioUrl, audioTitle, autoPlayTriggered }, ref) => {
    const audioRef = useRef<HTMLAudioElement | null>(null);
    const [isPlaying, setIsPlaying] = useState(false);
    const [currentSrc, setCurrentSrc] = useState<string>(audioUrl || '/tu-chahiye.mp3');

    // Sync src when audioUrl prop updates
    useEffect(() => {
      if (audioUrl) {
        setCurrentSrc(audioUrl);
      }
    }, [audioUrl]);

    useImperativeHandle(ref, () => ({
      play: async () => {
        if (audioRef.current) {
          try {
            audioRef.current.currentTime = 0;
            const promise = audioRef.current.play();
            if (promise !== undefined) {
              await promise;
              setIsPlaying(true);
            }
          } catch (e) {
            console.warn("Audio play error:", e);
            setIsPlaying(false);
          }
        }
      },
      pause: () => {
        if (audioRef.current) {
          audioRef.current.pause();
          setIsPlaying(false);
        }
      }
    }));

    useEffect(() => {
      if (autoPlayTriggered && audioRef.current) {
        const promise = audioRef.current.play();
        if (promise !== undefined) {
          promise
            .then(() => setIsPlaying(true))
            .catch((err) => {
              console.warn("Autoplay audio blocked by browser policy:", err);
              setIsPlaying(false);
            });
        }
      }
    }, [autoPlayTriggered, currentSrc]);

    const handleAudioError = () => {
      console.warn("Failed to load primary audio URL:", currentSrc);
      if (currentSrc !== '/tu-chahiye.mp3') {
        setCurrentSrc('/tu-chahiye.mp3');
      } else if (currentSrc !== '/vaa-kannamma-1.mp3') {
        setCurrentSrc('/vaa-kannamma-1.mp3');
      }
    };

    return (
      <audio
        ref={audioRef}
        src={currentSrc}
        loop
        preload="auto"
        onError={handleAudioError}
        onPlay={() => setIsPlaying(true)}
        onPause={() => setIsPlaying(false)}
        onEnded={() => setIsPlaying(false)}
        style={{ display: 'none' }}
      />
    );
  }
);

AudioPlayer.displayName = 'AudioPlayer';




