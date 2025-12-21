import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/// Utility class for file operations
class FileUtils {
  /// Format file size from bytes to human-readable string
  static String formatFileSize(int bytes) {
    if (bytes < 0) return '0 B';
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1048576) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    if (bytes < 1073741824) {
      return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    }
    return '${(bytes / 1073741824).toStringAsFixed(1)} GB';
  }

  /// Get appropriate icon for file type based on content-type
  static IconData getFileIcon(String? contentType) {
    if (contentType == null || contentType.isEmpty) {
      return Icons.insert_drive_file;
    }

    final type = contentType.toLowerCase();

    // PDF
    if (type.contains('pdf')) {
      return Icons.picture_as_pdf;
    }

    // Images
    if (type.contains('image')) {
      if (type.contains('png')) return Icons.image;
      if (type.contains('jpg') || type.contains('jpeg')) return Icons.image;
      if (type.contains('gif')) return Icons.gif;
      if (type.contains('svg')) return Icons.image;
      return Icons.image;
    }

    // Documents
    if (type.contains('word') ||
        type.contains('document') ||
        type.contains('msword') ||
        type.contains('officedocument.wordprocessingml')) {
      return Icons.description;
    }

    // Spreadsheets
    if (type.contains('excel') ||
        type.contains('sheet') ||
        type.contains('officedocument.spreadsheetml')) {
      return Icons.table_chart;
    }

    // Presentations
    if (type.contains('powerpoint') ||
        type.contains('presentation') ||
        type.contains('officedocument.presentationml')) {
      return Icons.slideshow;
    }

    // Archives
    if (type.contains('zip') ||
        type.contains('rar') ||
        type.contains('tar') ||
        type.contains('7z')) {
      return Icons.folder_zip;
    }

    // Text
    if (type.contains('text')) {
      return Icons.text_snippet;
    }

    // Default
    return Icons.insert_drive_file;
  }

  /// Get color for file type (for UI theming)
  static Color getFileColor(String? contentType) {
    if (contentType == null || contentType.isEmpty) {
      return Colors.grey;
    }

    final type = contentType.toLowerCase();

    if (type.contains('pdf')) return Colors.red;
    if (type.contains('image')) return Colors.blue;
    if (type.contains('word') || type.contains('document')) return Colors.blue[700]!;
    if (type.contains('excel') || type.contains('sheet')) return Colors.green;
    if (type.contains('powerpoint') || type.contains('presentation')) return Colors.orange;
    if (type.contains('zip') || type.contains('rar')) return Colors.amber;
    if (type.contains('text')) return Colors.blueGrey;

    return Colors.grey;
  }

  /// Open URL in default browser (for file download)
  static Future<void> openUrl(String url, {BuildContext? context}) async {
    try {
      final uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(
          uri,
          mode: LaunchMode.externalApplication, // Open in browser
        );
      } else {
        throw Exception('Could not launch $url');
      }
    } catch (e) {
      if (context != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Errore nell\'apertura del file: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  /// Get file extension from filename
  static String getFileExtension(String filename) {
    final parts = filename.split('.');
    if (parts.length > 1) {
      return parts.last.toLowerCase();
    }
    return '';
  }

  /// Check if file is an image based on extension
  static bool isImage(String filename) {
    final ext = getFileExtension(filename);
    return ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'svg'].contains(ext);
  }

  /// Check if file is a PDF
  static bool isPdf(String filename) {
    return getFileExtension(filename) == 'pdf';
  }

  /// Validate file size (returns null if valid, error message if invalid)
  static String? validateFileSize(int bytes, {int maxSizeMB = 10}) {
    final maxBytes = maxSizeMB * 1024 * 1024;
    if (bytes > maxBytes) {
      return 'Il file supera la dimensione massima di ${maxSizeMB}MB';
    }
    return null;
  }

  /// Get shortened filename for display
  static String shortenFilename(String filename, {int maxLength = 30}) {
    if (filename.length <= maxLength) return filename;

    final ext = getFileExtension(filename);
    final nameWithoutExt = filename.substring(0, filename.length - ext.length - 1);
    final shortenedName = nameWithoutExt.substring(0, maxLength - ext.length - 4);

    return '$shortenedName...$ext';
  }
}
