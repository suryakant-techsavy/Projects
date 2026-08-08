export interface CoupleDetails {
  groomName: string;
  groomParents: string;
  brideName: string;
  brideParents: string;
  engagementDate: string; // ISO string or format e.g. "2026-04-28T12:24:00"
  dateDisplay: string; // e.g. "28th April 2026"
  timeDisplay: string; // e.g. "12:24 PM (Shubh Muhurat)"
  deityBlessing: string; // e.g. "!! श्री मैलार मल्लन्ना प्रसन्न !!"
  openingBlessing: string; // e.g. "!! श्री गणेशाय नमः !!"
  venueName: string;
  venueAddress: string;
  venueMapUrl: string;
  whatsappNumber: string; // e.g. "918356901360"
  audioUrl: string;
  audioTitle: string;
  googleDriveFolderUrl?: string;
}

export interface EventItem {
  id: string;
  title: string;
  subTitle: string;
  time: string;
  iconName: string;
  description: string;
}

export interface GalleryPhoto {
  id: string;
  url: string;
  caption: string;
  category: 'All' | 'Couple' | 'Ceremony' | 'Pre-Wedding' | 'Family';
  aspectRatio?: 'portrait' | 'square' | 'landscape';
}

export interface RsvpResponse {
  id: string;
  name: string;
  email?: string;
  phone?: string;
  attending: 'yes' | 'no' | 'maybe';
  guestCount: number;
  dietaryPref: 'veg' | 'jain' | 'non-veg' | 'any';
  blessingMessage: string;
  submittedAt: string;
  photoUrl?: string;
}

export interface TimeLeft {
  days: number;
  hours: number;
  minutes: number;
  seconds: number;
  isPassed: boolean;
}
