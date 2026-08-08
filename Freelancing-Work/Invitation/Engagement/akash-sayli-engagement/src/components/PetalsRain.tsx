import React, { useMemo } from 'react';

interface Petal {
  id: number;
  left: number;
  size: number;
  duration: number;
  delay: number;
  color: string;
  type: 'rose' | 'marigold' | 'gold';
}

export const PetalsRain: React.FC = () => {
  const petals = useMemo<Petal[]>(() => {
    const items: Petal[] = [];
    const colors = [
      '#E63946', '#D62828', '#C1121F', '#BA181B', // Crimson & Ruby Rose
      '#FFB703', '#FB8500', '#F4A261', '#E76F51', // Marigold & Saffron
      '#D4AF37', '#F5D77F'                        // Golden Shimmer
    ];

    for (let i = 0; i < 32; i++) {
      const typeRand = Math.random();
      const type = typeRand < 0.65 ? 'rose' : typeRand < 0.85 ? 'marigold' : 'gold';
      items.push({
        id: i,
        left: Math.random() * 98,
        size: Math.floor(Math.random() * 14) + 14, // 14px to 28px
        duration: Math.random() * 6 + 6,          // 6s to 12s
        delay: Math.random() * 8,                  // 0s to 8s
        color: colors[Math.floor(Math.random() * colors.length)],
        type
      });
    }
    return items;
  }, []);

  return (
    <div className="fixed inset-0 pointer-events-none z-20 overflow-hidden">
      {petals.map((petal) => (
        <div
          key={petal.id}
          className="absolute animate-petal opacity-80"
          style={{
            left: `${petal.left}%`,
            top: '-30px',
            animationDuration: `${petal.duration}s`,
            animationDelay: `${petal.delay}s`,
            animationTimingFunction: 'linear',
            animationIterationCount: 'infinite'
          }}
        >
          <svg
            width={petal.size}
            height={petal.size * 1.25}
            viewBox="0 0 24 30"
            fill={petal.color}
            className="drop-shadow-sm"
            style={{
              transform: `rotate(${petal.id * 35}deg)`
            }}
          >
            {petal.type === 'rose' ? (
              <path d="M12 0C18.6274 0 24 5.37258 24 12C24 20 15 28 12 30C9 28 0 20 0 12C0 5.37258 5.37258 0 12 0Z" opacity="0.9" />
            ) : petal.type === 'marigold' ? (
              <path d="M12 2C15 2 18 6 18 12C18 18 15 22 12 22C9 22 6 18 6 12C6 6 9 2 12 2Z" opacity="0.85" />
            ) : (
              <path d="M12 2L15 9L22 12L15 15L12 22L9 15L2 12L9 9L12 2Z" opacity="0.75" />
            )}
          </svg>
        </div>
      ))}
    </div>
  );
};
