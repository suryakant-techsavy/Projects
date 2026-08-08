import React, { useState } from 'react';
import { CoupleDetails } from '../types';
import { X, Settings, Save, RotateCcw, Sparkles, Check } from 'lucide-react';

interface HostCustomizerProps {
  details: CoupleDetails;
  isOpen: boolean;
  onClose: () => void;
  onSave: (newDetails: CoupleDetails) => void;
  onReset: () => void;
}

export const HostCustomizer: React.FC<HostCustomizerProps> = ({
  details,
  isOpen,
  onClose,
  onSave,
  onReset
}) => {
  const [formData, setFormData] = useState<CoupleDetails>(details);
  const [savedFeedback, setSavedFeedback] = useState(false);

  if (!isOpen) return null;

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    onSave(formData);
    setSavedFeedback(true);
    setTimeout(() => {
      setSavedFeedback(false);
      onClose();
    }, 1000);
  };

  return (
    <div className="fixed inset-0 z-50 bg-black/70 backdrop-blur-sm flex items-center justify-center p-4 overflow-y-auto">
      <div className="bg-[#FFFDFB] rounded-3xl p-6 md:p-8 max-w-2xl w-full border border-[#D4AF37]/50 shadow-2xl relative my-8">
        <button
          onClick={onClose}
          className="absolute top-5 right-5 text-[#800A21] p-2 rounded-full hover:bg-[#800A21]/10 cursor-pointer"
        >
          <X className="w-5 h-5" />
        </button>

        <div className="text-center mb-6">
          <div className="inline-flex p-3 rounded-full bg-[#800A21]/10 text-[#800A21] mb-2">
            <Settings className="w-6 h-6 text-[#800A21]" />
          </div>
          <h3 className="font-cinzel text-2xl font-bold text-[#800A21]">
            Customize Engagement Invitation
          </h3>
          <p className="text-xs text-[#2D1518]/70 font-poppins mt-1">
            Edit couple details, date, venue, WhatsApp number, and audio preferences live
          </p>
        </div>

        {savedFeedback && (
          <div className="mb-4 p-3 rounded-xl bg-green-100 border border-green-400 text-green-800 text-xs font-semibold text-center flex items-center justify-center gap-2">
            <Check className="w-4 h-4 text-green-700" />
            <span>Invitation details updated successfully!</span>
          </div>
        )}

        <form onSubmit={handleSubmit} className="space-y-4 max-h-[65vh] overflow-y-auto pr-2">
          {/* Couple Names */}
          <div className="grid md:grid-cols-2 gap-4">
            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Groom Name
              </label>
              <input
                type="text"
                name="groomName"
                value={formData.groomName}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>

            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Groom's Parents
              </label>
              <input
                type="text"
                name="groomParents"
                value={formData.groomParents}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>
          </div>

          <div className="grid md:grid-cols-2 gap-4">
            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Bride Name
              </label>
              <input
                type="text"
                name="brideName"
                value={formData.brideName}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>

            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Bride's Parents
              </label>
              <input
                type="text"
                name="brideParents"
                value={formData.brideParents}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>
          </div>

          {/* Date & Time */}
          <div className="grid md:grid-cols-2 gap-4">
            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Date Display Text
              </label>
              <input
                type="text"
                name="dateDisplay"
                value={formData.dateDisplay}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>

            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Time / Shubh Muhurat Text
              </label>
              <input
                type="text"
                name="timeDisplay"
                value={formData.timeDisplay}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>
          </div>

          {/* Countdown Target Date */}
          <div>
            <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
              Countdown Target Date & Time (ISO String / YYYY-MM-DDTHH:mm:ss)
            </label>
            <input
              type="datetime-local"
              name="engagementDate"
              value={formData.engagementDate.slice(0, 16)}
              onChange={handleChange}
              className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
            />
          </div>

          {/* Venue Info */}
          <div>
            <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
              Venue Name
            </label>
            <input
              type="text"
              name="venueName"
              value={formData.venueName}
              onChange={handleChange}
              className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
            />
          </div>

          <div>
            <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
              Venue Full Address
            </label>
            <textarea
              name="venueAddress"
              rows={2}
              value={formData.venueAddress}
              onChange={handleChange}
              className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
            />
          </div>

          {/* WhatsApp & Audio */}
          <div className="grid md:grid-cols-2 gap-4">
            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                WhatsApp Phone Number (with Country Code e.g., 918356901360)
              </label>
              <input
                type="text"
                name="whatsappNumber"
                value={formData.whatsappNumber}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>

            <div>
              <label className="block text-xs font-bold text-[#4A121A] font-poppins mb-1">
                Deity Header Blessing
              </label>
              <input
                type="text"
                name="deityBlessing"
                value={formData.deityBlessing}
                onChange={handleChange}
                className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#4A121A] bg-white"
              />
            </div>
          </div>

          <div>
            <label className="block text-xs font-bold text-[#800A21] font-poppins mb-1">
              Background Music Audio MP3 URL
            </label>
            <input
              type="text"
              name="audioUrl"
              value={formData.audioUrl}
              onChange={handleChange}
              className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#800A21] bg-white"
            />
          </div>

          <div>
            <label className="block text-xs font-bold text-[#800A21] font-poppins mb-1">
              Google Drive Photo Folder Shared Link
            </label>
            <input
              type="text"
              name="googleDriveFolderUrl"
              placeholder="https://drive.google.com/drive/folders/..."
              value={formData.googleDriveFolderUrl || ''}
              onChange={handleChange}
              className="w-full px-3.5 py-2.5 rounded-xl border border-[#D4AF37]/50 text-xs font-poppins focus:ring-2 focus:ring-[#800A21] bg-white"
            />
          </div>

          {/* Buttons */}
          <div className="pt-4 flex items-center gap-3">
            <button
              type="submit"
              className="flex-1 py-3 rounded-xl bg-[#800A21] text-[#FFEAA7] font-cinzel font-bold text-xs uppercase tracking-wider border border-[#D4AF37]/50 shadow-md hover:bg-[#580614] transition-colors cursor-pointer flex items-center justify-center gap-2"
            >
              <Save className="w-4 h-4" />
              <span>Save & Apply Changes</span>
            </button>

            <button
              type="button"
              onClick={onReset}
              className="px-4 py-3 rounded-xl bg-white text-[#800A21] border border-[#800A21]/30 text-xs font-semibold hover:bg-[#800A21]/10 transition-colors cursor-pointer flex items-center gap-1.5"
              title="Reset to default details"
            >
              <RotateCcw className="w-3.5 h-3.5" />
              <span>Reset</span>
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};
