import { CoupleDetails, EventItem, GalleryPhoto, RsvpResponse } from '../types';

export const initialCoupleDetails: CoupleDetails = {
  groomName: "Akash",
  groomParents: "Smt. Shobha & Shri Krishna Bhagle",
  brideName: "Sayli",
  brideParents: "Smt. Aarti & Shri Vishal Parab",
  engagementDate: "2026-08-30T12:24:00",
  dateDisplay: "Sunday, 30th August 2026",
  timeDisplay: "12:24 PM (Shubh Muhurat)",
  deityBlessing: "!! श्री गणेशाय नमः !!",
  openingBlessing: "!! श्री गणेशाय नमः !!",
  venueName: "Shree Datta Sai Mandir",
  venueAddress: "Ceasar Rd, Dhakoji Sethpada, Navneeth Colony, Amboli, Mumbai, Maharashtra 400058",
  venueMapUrl: "https://maps.google.com/maps?q=Shree+Datta+Sai+Mandir,+Ceasar+Rd,+Dhakoji+Sethpada,+Navneeth+Colony,+Amboli,+Mumbai,+Maharashtra+400058&t=&z=16&ie=UTF8&iwloc=&output=embed",
  whatsappNumber: "919876543210",
  // Romantic background theme - Tu Chahiye
  audioUrl: "/tu-chahiye.mp3",
  audioTitle: "Tu Chahiye",
  googleDriveFolderUrl: "https://drive.google.com"
};

export const initialScheduleEvents: EventItem[] = [
  {
    id: "1",
    title: "Swagatam & Welcome Drinks",
    subTitle: "Traditional Shehnai Swagatam",
    time: "10:30 AM",
    iconName: "Coffee",
    description: "Welcoming guests with traditional dhol-tasha, fresh kokum sherbet, rose water sprinkling, and sweets."
  },
  {
    id: "2",
    title: "Ganesh Pujan & Sagaai Rituals",
    subTitle: "Blessings of Almighty",
    time: "11:30 AM",
    iconName: "Sparkles",
    description: "Invoking Lord Ganesha's divine presence followed by exchange of traditional gifts & tilak between families."
  },
  {
    id: "3",
    title: "The Ring Exchange Ceremony",
    subTitle: "Shubh Muhurat (12:24 PM)",
    time: "12:15 PM - 12:45 PM",
    iconName: "Heart",
    description: "The golden moment when Akash & Sayli exchange engagement rings surrounded by shower of rose petals."
  },
  {
    id: "4",
    title: "Royal Feast & High Tea",
    subTitle: "Traditional Pure Veg Buffet",
    time: "01:00 PM Onwards",
    iconName: "Utensils",
    description: "A lavish Maharashtrian & North Indian multi-course feast featuring authentic Puran Poli, Shrikhand, and live counters."
  },
  {
    id: "5",
    title: "Photo Sessions & Blessings",
    subTitle: "Memories for Lifetime",
    time: "02:30 PM Onwards",
    iconName: "Camera",
    description: "Meet the couple on stage, share your heartiest blessings, and capture cherished family photographs."
  }
];

export const initialGalleryPhotos: GalleryPhoto[] = [
  {
    id: "g1",
    url: "https://images.unsplash.com/photo-1583939003579-730e3918a45a?auto=format&fit=crop&w=1000&q=80",
    caption: "The promise of forever - Hand in hand in traditional royal attire",
    category: "Couple",
    aspectRatio: "portrait"
  },
  {
    id: "g2",
    url: "https://images.unsplash.com/photo-1606800052052-a08af7148866?auto=format&fit=crop&w=1000&q=80",
    caption: "Golden Rings & Floral Garland Details",
    category: "Ceremony",
    aspectRatio: "landscape"
  },
  {
    id: "g3",
    url: "https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=1000&q=80",
    caption: "Traditional Henna Mehendi Elegance",
    category: "Pre-Wedding",
    aspectRatio: "portrait"
  },
  {
    id: "g4",
    url: "https://images.unsplash.com/photo-1519741497674-611481863552?auto=format&fit=crop&w=1000&q=80",
    caption: "Ethereal Marigold & Rose Canopy Decor",
    category: "Ceremony",
    aspectRatio: "landscape"
  },
  {
    id: "g5",
    url: "https://images.unsplash.com/photo-1511285560929-80b456fea0bc?auto=format&fit=crop&w=1000&q=80",
    caption: "Celebration with family and warm smiles",
    category: "Family",
    aspectRatio: "portrait"
  },
  {
    id: "g6",
    url: "https://images.unsplash.com/photo-1544078751-58fee2d8a03b?auto=format&fit=crop&w=1000&q=80",
    caption: "Akash & Sayli - Sunset Reflections",
    category: "Couple",
    aspectRatio: "landscape"
  }
];

export const initialRsvps: RsvpResponse[] = [
  {
    id: "r1",
    name: "Ramesh & Sunita Patil",
    attending: "yes",
    guestCount: 4,
    dietaryPref: "veg",
    blessingMessage: "Wishing Suryakant and Aishwarya a lifetime of love, prosperity, and joy on this sacred engagement day! Hearty congratulations to Dubalgunde & Gunjarge families!",
    submittedAt: "2026-08-01T10:15:00Z"
  },
  {
    id: "r2",
    name: "Dr. Vijay Kulkarni & Family",
    attending: "yes",
    guestCount: 2,
    dietaryPref: "jain",
    blessingMessage: "So delighted to hear the wonderful news! May Lord Ganesha shower endless blessings on both of you as you embark on this beautiful journey together.",
    submittedAt: "2026-08-02T14:30:00Z"
  },
  {
    id: "r3",
    name: "Anand Deshmukh",
    attending: "yes",
    guestCount: 3,
    dietaryPref: "veg",
    blessingMessage: "Congratulations Suryakant bro! Super excited to attend the Sagaai ceremony in Bhalki. See you all soon!",
    submittedAt: "2026-08-03T09:20:00Z"
  }
];
