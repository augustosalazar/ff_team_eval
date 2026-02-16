import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'rating_component_model.dart';
export 'rating_component_model.dart';

class RatingComponentWidget extends StatefulWidget {
  const RatingComponentWidget({super.key});

  @override
  State<RatingComponentWidget> createState() => _RatingComponentWidgetState();
}

class _RatingComponentWidgetState extends State<RatingComponentWidget> {
  late RatingComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: RatingBar.builder(
        onRatingUpdate: (newValue) =>
            safeSetState(() => _model.ratingBarValue = newValue),
        itemBuilder: (context, index) => Icon(
          Icons.star,
          color: Color(0xFFFFD700),
        ),
        direction: Axis.horizontal,
        initialRating: _model.ratingBarValue ??= 0.0,
        unratedColor: FlutterFlowTheme.of(context).alternate,
        itemCount: 5,
        itemSize: 32.0,
        glowColor: Color(0xFFFFD700),
      ),
    );
  }
}
