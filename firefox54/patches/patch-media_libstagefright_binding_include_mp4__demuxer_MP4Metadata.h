$NetBSD$

--- media/libstagefright/binding/include/mp4_demuxer/MP4Metadata.h.orig	2017-06-15 20:52:14.000000000 +0000
+++ media/libstagefright/binding/include/mp4_demuxer/MP4Metadata.h
@@ -36,6 +36,7 @@ public:
 
 private:
   UniquePtr<MP4MetadataStagefright> mStagefright;
+#ifdef MOZ_RUST_MP4PARSE
   UniquePtr<MP4MetadataRust> mRust;
   mutable bool mPreferRust;
   mutable bool mReportedAudioTrackTelemetry;
@@ -44,6 +45,7 @@ private:
   mutable bool mRustTestMode;
 #endif
   bool ShouldPreferRust() const;
+#endif // MOZ_RUST_MP4PARSE
 };
 
 } // namespace mp4_demuxer
