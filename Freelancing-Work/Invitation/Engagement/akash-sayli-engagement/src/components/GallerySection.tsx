import React, { useState } from 'react';
import { GalleryPhoto } from '../types';
import { Maximize2, X, FolderPlus, ExternalLink, Plus, Image as ImageIcon } from 'lucide-react';

interface GallerySectionProps {
  photos: GalleryPhoto[];
  googleDriveUrl?: string;
  onUploadMemory?: (newPhoto: GalleryPhoto) => void;
}

export const GallerySection: React.FC<GallerySectionProps> = ({ 
  photos, 
  googleDriveUrl = "https://drive.google.com",
  onUploadMemory 
}) => {
  const [selectedPhoto, setSelectedPhoto] = useState<GalleryPhoto | null>(null);
  const [isAddModalOpen, setIsAddModalOpen] = useState(false);
  const [newUrl, setNewUrl] = useState('');
  const [newCaption, setNewCaption] = useState('');

  const handleAddPhotoSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!newUrl.trim()) return;
    
    if (onUploadMemory) {
      onUploadMemory({
        id: `photo_${Date.now()}`,
        url: newUrl.trim(),
        caption: newCaption.trim() || 'Suryakant & Aishwarya Engagement Memory',
        category: 'Couple'
      });
    }

    setNewUrl('');
    setNewCaption('');
    setIsAddModalOpen(false);
  };

  return (
    <section id="gallery" className="py-16 md:py-24 px-4 bg-[#FFFDFB] relative">
      <div className="max-w-6xl mx-auto text-center">
        <span className="text-xs uppercase font-marcellus text-[#C5A059] tracking-[0.25em] block mb-2">
          Cherished Moments
        </span>

        <h2 className="font-script text-4xl md:text-5xl text-[#800A21] mb-3">
          Engagement Photo Gallery
        </h2>

        <div className="w-20 h-[2px] bg-gradient-to-r from-transparent via-[#D4AF37] to-transparent mx-auto mb-6" />

        {/* Google Drive Shared Drive & Quick Upload Action Banner */}
        <div className="max-w-2xl mx-auto mb-10 p-5 rounded-2xl bg-gradient-to-r from-[#FFF9F0] via-white to-[#FFF9F0] border-2 border-[#D4AF37]/40 shadow-sm flex flex-col sm:flex-row items-center justify-between gap-4">
          <div className="text-left flex items-start gap-3">
            <div className="p-3 rounded-xl bg-[#800A21] text-[#FFEAA7] shrink-0 mt-0.5">
              <FolderPlus className="w-6 h-6" />
            </div>
            <div>
              <h4 className="font-cinzel font-bold text-sm text-[#800A21]">
                Share Your High-Res Ceremony Photos
              </h4>
              <p className="text-xs text-[#2D1518]/70 font-poppins mt-0.5">
                Upload pictures directly to our Google Drive folder or add a photo link to feature it on this invitation wall!
              </p>
            </div>
          </div>

          <div className="flex flex-col sm:flex-row items-center gap-2 w-full sm:w-auto shrink-0">
            <a
              href={googleDriveUrl}
              target="_blank"
              rel="noopener noreferrer"
              className="w-full sm:w-auto px-4 py-2.5 rounded-xl bg-[#800A21] text-[#FFEAA7] font-poppins font-semibold text-xs border border-[#D4AF37]/60 shadow hover:bg-[#580614] transition-all flex items-center justify-center gap-2 cursor-pointer"
            >
              <span>Google Drive Folder</span>
              <ExternalLink className="w-3.5 h-3.5" />
            </a>

            <button
              onClick={() => setIsAddModalOpen(true)}
              className="w-full sm:w-auto px-4 py-2.5 rounded-xl bg-white text-[#800A21] font-poppins font-semibold text-xs border border-[#800A21]/30 hover:bg-[#800A21]/5 transition-all flex items-center justify-center gap-1.5 cursor-pointer"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>Add Photo Link</span>
            </button>
          </div>
        </div>

        {/* Full Unfiltered Photo Gallery Grid */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {photos.map((photo) => (
            <div
              key={photo.id}
              onClick={() => setSelectedPhoto(photo)}
              className="group relative rounded-2xl overflow-hidden border border-[#D4AF37]/35 bg-white shadow-md hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-1 cursor-pointer aspect-4/3"
            >
              <img
                src={photo.url}
                alt={photo.caption}
                className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                loading="lazy"
              />

              {/* Hover Overlay */}
              <div className="absolute inset-0 bg-gradient-to-t from-[#580614]/95 via-[#580614]/40 to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 p-6 flex flex-col justify-end text-left">
                <p className="text-xs font-poppins text-white font-medium line-clamp-2">
                  {photo.caption}
                </p>
                <div className="mt-3 flex items-center gap-1 text-[11px] text-[#FFEAA7] font-semibold">
                  <Maximize2 className="w-3.5 h-3.5" />
                  <span>Click to view full image</span>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>

      {/* Lightbox Modal */}
      {selectedPhoto && (
        <div className="fixed inset-0 z-50 bg-black/90 backdrop-blur-md flex items-center justify-center p-4">
          <button
            onClick={() => setSelectedPhoto(null)}
            className="absolute top-5 right-5 text-white/80 hover:text-white p-2 rounded-full bg-white/10 hover:bg-white/20 transition-colors cursor-pointer"
          >
            <X className="w-6 h-6" />
          </button>

          <div className="max-w-4xl w-full bg-[#3B0711] rounded-2xl overflow-hidden border border-[#D4AF37] shadow-2xl">
            <img
              src={selectedPhoto.url}
              alt={selectedPhoto.caption}
              className="w-full max-h-[70vh] object-contain bg-black"
            />
            <div className="p-6 text-center bg-[#28040B] text-white">
              <p className="text-sm font-poppins text-gray-200">
                {selectedPhoto.caption}
              </p>
            </div>
          </div>
        </div>
      )}

      {/* Add Photo Link Modal */}
      {isAddModalOpen && (
        <div className="fixed inset-0 z-50 bg-black/70 backdrop-blur-sm flex items-center justify-center p-4">
          <div className="bg-[#FFFDFB] rounded-2xl p-6 max-w-md w-full border border-[#D4AF37]/60 shadow-2xl relative">
            <button
              onClick={() => setIsAddModalOpen(false)}
              className="absolute top-4 right-4 text-[#800A21] p-1.5 rounded-full hover:bg-[#800A21]/10 cursor-pointer"
            >
              <X className="w-5 h-5" />
            </button>

            <div className="text-center mb-5">
              <div className="w-12 h-12 rounded-full bg-[#800A21] text-[#FFEAA7] flex items-center justify-center mx-auto mb-2 border border-[#D4AF37]">
                <ImageIcon className="w-6 h-6" />
              </div>
              <h3 className="font-cinzel text-xl font-bold text-[#800A21]">
                Add Memory Photo URL
              </h3>
              <p className="text-xs text-[#2D1518]/70 font-poppins">
                Enter image address link to feature your picture in the gallery!
              </p>
            </div>

            <form onSubmit={handleAddPhotoSubmit} className="space-y-4 text-left">
              <div>
                <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                  Image Direct URL *
                </label>
                <input
                  type="url"
                  required
                  placeholder="https://images.unsplash.com/photo-..."
                  value={newUrl}
                  onChange={(e) => setNewUrl(e.target.value)}
                  className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/60 text-xs font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21]"
                />
              </div>

              <div>
                <label className="block text-xs font-bold text-[#800A21] uppercase font-marcellus mb-1">
                  Photo Caption
                </label>
                <input
                  type="text"
                  placeholder="e.g. Ring exchange moment with family"
                  value={newCaption}
                  onChange={(e) => setNewCaption(e.target.value)}
                  className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/60 text-xs font-poppins focus:outline-none focus:ring-2 focus:ring-[#800A21]"
                />
              </div>

              <div className="pt-2 flex items-center gap-3">
                <button
                  type="submit"
                  className="flex-1 py-3 rounded-xl bg-[#800A21] text-[#FFEAA7] font-cinzel font-bold text-xs uppercase border border-[#D4AF37]/60 shadow hover:bg-[#580614] transition-all cursor-pointer"
                >
                  Add To Gallery
                </button>
                <button
                  type="button"
                  onClick={() => setIsAddModalOpen(false)}
                  className="px-4 py-3 rounded-xl bg-gray-100 text-[#2D1518] text-xs font-semibold hover:bg-gray-200 transition-colors cursor-pointer"
                >
                  Cancel
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </section>
  );
};
