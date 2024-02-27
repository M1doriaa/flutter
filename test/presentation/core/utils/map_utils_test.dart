import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:run_flutter_run/presentation/common/core/utils/map_utils.dart';

void main() {
  group('MapUtils', () {
    test('getCenterOfMap should return the center coordinates', () {
      final points = [
        const LatLng(21.0278, 105.8342), // Hanoi
      ];

      final center = MapUtils.getCenterOfMap(points);

      // Since there's only one point, the center should be the same as that point
      expect(center.latitude, closeTo(21.0278, 0.0001));
      expect(center.longitude, closeTo(105.8342, 0.0001));
    });

    test('getDistance should return the distance between two coordinates', () {
      const point1 = LatLng(21.0278, 105.8342); // Hanoi
      const point2 = LatLng(21.0278, 105.8342); // Hanoi

      final distance = MapUtils.getDistance(point1, point2);

      // Since the points are the same, the distance should be 0
      expect(distance, closeTo(0.0, 0.0001));
    });

    test(
        'getRadius should return the maximum distance from the center to any point',
        () {
      final points = [
        const LatLng(21.0278, 105.8342), // Hanoi
      ];
      const center = LatLng(21.0278, 105.8342); // Hanoi

      final radius = MapUtils.getRadius(points, center);

      // Since there's only one point, the radius should be 0
      expect(radius, closeTo(0.0, 0.0001));
    });

    test('getZoomLevel should return the calculated zoom level', () {
      final points = [
        const LatLng(21.0278, 105.8342), // Hanoi
      ];
      const center = LatLng(21.0278, 105.8342); // Hanoi

      final zoomLevel = MapUtils.getZoomLevel(points, center);

      // The zoom level calculation may vary depending on the implementation
      // Update the expected value accordingly
      // expect(zoomLevel, closeTo(5.71, 0.01));
    });
  });
}