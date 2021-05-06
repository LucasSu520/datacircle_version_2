import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ExpandedText extends StatefulWidget {
  const ExpandedText(
      {Key key,
        @required this.text,
      this.expanded = false,
      @required this.expandText,
        @required this.route,
      this.linkColor,
      this.style,
      this.textDirection,
      this.textAlign,
      this.maxLines,
      this.locale,
      this.textScaleFactor,
      this.semanticsLabel, })
      : assert(text != null,
            'A non-null String must be provided to a Text widget'),
        assert(expandText != null),
        assert(maxLines != null && maxLines > 0),
        super(key: key);

  final String text;
  final Route route;
  final bool expanded;
  final String expandText;
  final Color linkColor;
  final TextStyle style;
  final TextAlign textAlign;
  final TextDirection textDirection;
  final int maxLines;
  final Locale locale;
  final double textScaleFactor;
  final String semanticsLabel;

  @override
  _ExpandedTextState createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  bool _expanded = false;
  TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    _expanded = widget.expanded;
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = _toggleExpanded;
    super.initState();
  }

  @override
  void dispose() {
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    Navigator.of(context).push(widget.route);
  }

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle effectiveTextStyle = widget.style;
    if (widget.style == null || widget.style.inherit) {
      effectiveTextStyle = defaultTextStyle.style.merge(widget.style);
    }
    final textAlign =
        widget.textAlign ?? defaultTextStyle.textAlign ?? TextAlign.start;
    final textDirection = widget.textDirection ?? Directionality.of(context);
    final textScaleFactor =
        widget.textScaleFactor ?? MediaQuery.textScaleFactorOf(context);
    final locale = Localizations.localeOf(context);
    final linkText ='${widget.expandText}';
    final linkColor = widget.linkColor ?? Theme.of(context).accentColor;
    final link = TextSpan(
        text: _expanded ? '' : '\u2026',
        style: effectiveTextStyle,
        children: [
          TextSpan(
            text: linkText,
            style: effectiveTextStyle.copyWith(color: linkColor),
            recognizer: _tapGestureRecognizer,
          )
        ]);
    final text = TextSpan(
      text: widget.text,
      style: effectiveTextStyle,
    );

    Widget result = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        assert(constraints.hasBoundedWidth);
        final double maxWidth = constraints.maxWidth;
        TextPainter textPainter = TextPainter(
          text: link,
          textAlign: textAlign,
          textDirection: textDirection,
          textScaleFactor: textScaleFactor,
          maxLines: widget.maxLines,
          locale: locale,
        );
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final linkSize = textPainter.size;
        final linkWidth = textPainter.width;
        print(
            'textPainter-min${textPainter.width} textPainter-max${textPainter.maxIntrinsicWidth}');
        textPainter.text = text;
        textPainter.layout(minWidth: constraints.minWidth, maxWidth: maxWidth);
        final textSize = textPainter.size;

        final position = textPainter.getPositionForOffset(
            Offset(textSize.width - linkWidth, textSize.height));

        final endOffset = textPainter.getOffsetBefore(position.offset);

        TextSpan textSpan;
        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
              style: effectiveTextStyle,
              text:
                  widget.text.substring(0, endOffset),
              children: [
                link,
              ]);
        } else {
          textSpan = text;
        }
        return RichText(
          text: textSpan,
          softWrap: true,
          textDirection: textDirection,
          textAlign: textAlign,
          textScaleFactor: textScaleFactor,
          overflow: TextOverflow.clip,
        );
      },
    );

    if (widget.semanticsLabel != null) {
      result = Semantics(
        textDirection: widget.textDirection,
        label: widget.semanticsLabel,
        child: ExcludeFocus(
          child: result,
        ),
      );
    }

    return result;
  }
}
