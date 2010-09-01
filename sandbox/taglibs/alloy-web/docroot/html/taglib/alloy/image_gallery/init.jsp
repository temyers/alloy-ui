<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:image-gallery:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:image-gallery:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:image-gallery:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:image-gallery:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:image-gallery:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.lang.Object _align = (java.lang.Object)request.getAttribute("alloy:image-gallery:align");
java.lang.Boolean _anim = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:anim"), true);
java.lang.Object _arrowLeftEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:arrowLeftEl");
java.lang.Object _arrowRightEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:arrowRightEl");
java.lang.Boolean _autoPlay = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:autoPlay"), false);
java.lang.Object _imagegalleryBodyContent = (java.lang.Object)request.getAttribute("alloy:image-gallery:imagegalleryBodyContent");
java.lang.Object _caption = (java.lang.Object)request.getAttribute("alloy:image-gallery:caption");
java.lang.Object _captionEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:captionEl");
java.lang.Boolean _captionFromTitle = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:captionFromTitle"), true);
java.lang.Boolean _centered = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:centered"), true);
java.lang.Object _closeEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:closeEl");
java.lang.Object _constrain = (java.lang.Object)request.getAttribute("alloy:image-gallery:constrain");
java.lang.Object _cssClass = (java.lang.Object)request.getAttribute("alloy:image-gallery:cssClass");
java.lang.Number _currentIndex = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:currentIndex"), 0);
java.lang.Number _delay = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:delay"), 7000);
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:destroyed"), false);
java.lang.Boolean _disabled = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:disabled"), false);
java.lang.Object _fillHeight = (java.lang.Object)request.getAttribute("alloy:image-gallery:fillHeight");
java.lang.Boolean _focused = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:focused"), false);
java.lang.Object _footerContent = (java.lang.Object)request.getAttribute("alloy:image-gallery:footerContent");
java.lang.Object _headerContent = (java.lang.Object)request.getAttribute("alloy:image-gallery:headerContent");
java.lang.Object _height = (java.lang.Object)request.getAttribute("alloy:image-gallery:height");
java.lang.Object _hideClass = (java.lang.Object)request.getAttribute("alloy:image-gallery:hideClass");
java.lang.Object _imagegalleryId = (java.lang.Object)request.getAttribute("alloy:image-gallery:imagegalleryId");
java.lang.Object _image = (java.lang.Object)request.getAttribute("alloy:image-gallery:image");
java.lang.Object _imageAnim = (java.lang.Object)request.getAttribute("alloy:image-gallery:imageAnim");
java.lang.Object _infoEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:infoEl");
java.lang.Object _infoTemplate = (java.lang.Object)request.getAttribute("alloy:image-gallery:infoTemplate");
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:initialized"), false);
java.lang.Object _links = (java.lang.Object)request.getAttribute("alloy:image-gallery:links");
java.lang.Object _loader = (java.lang.Object)request.getAttribute("alloy:image-gallery:loader");
java.lang.Boolean _loading = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:loading"), false);
java.lang.Object _loadingEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:loadingEl");
java.lang.Number _maxHeight = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:maxHeight"), 0);
java.lang.Number _maxWidth = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:maxWidth"), 0);
java.lang.Object _modal = (java.lang.Object)request.getAttribute("alloy:image-gallery:modal");
java.lang.Object _paginator = (java.lang.Object)request.getAttribute("alloy:image-gallery:paginator");
java.lang.Object _paginatorEl = (java.lang.Object)request.getAttribute("alloy:image-gallery:paginatorEl");
java.lang.Object _paginatorInstance = (java.lang.Object)request.getAttribute("alloy:image-gallery:paginatorInstance");
java.lang.Boolean _paused = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:paused"), false);
java.lang.Object _pausedLabel = (java.lang.Object)request.getAttribute("alloy:image-gallery:pausedLabel");
java.lang.Boolean _playing = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:playing"), false);
java.lang.Object _playingLabel = (java.lang.Object)request.getAttribute("alloy:image-gallery:playingLabel");
java.lang.Boolean _preloadAllImages = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:preloadAllImages"), false);
java.lang.Boolean _preventOverlap = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:preventOverlap"), false);
java.lang.Boolean _render = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:render"), false);
java.lang.Boolean _rendered = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:rendered"), false);
java.lang.Boolean _repeat = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:repeat"), true);
java.lang.Boolean _shim = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:shim"), false);
java.lang.Boolean _showArrows = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:showArrows"), true);
java.lang.Boolean _showClose = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:showClose"), true);
java.lang.Boolean _showPlayer = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:showPlayer"), true);
java.lang.Object _strings = (java.lang.Object)request.getAttribute("alloy:image-gallery:strings");
java.lang.Number _tabIndex = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:tabIndex"), 0);
java.lang.Object _toolbar = (java.lang.Object)request.getAttribute("alloy:image-gallery:toolbar");
java.lang.Boolean _totalLinks = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:totalLinks"), true);
java.lang.Boolean _useOriginalImage = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:useOriginalImage"), false);
java.lang.Boolean _visible = GetterUtil.getBoolean((java.lang.String)request.getAttribute("alloy:image-gallery:visible"), true);
java.lang.Object _width = (java.lang.Object)request.getAttribute("alloy:image-gallery:width");
java.lang.Number _x = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:x"), 0);
java.lang.Object _xy = (java.lang.Object)request.getAttribute("alloy:image-gallery:xy");
java.lang.Number _y = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:y"), 0);
java.lang.Number _zIndex = GetterUtil.getNumber((java.lang.String)request.getAttribute("alloy:image-gallery:zIndex"), 0);
java.lang.Object _afterAlignChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterAlignChange");
java.lang.Object _afterAnim = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterAnim");
java.lang.Object _afterAnimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterAnimChange");
java.lang.Object _afterArrowLeftElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterArrowLeftElChange");
java.lang.Object _afterArrowRightElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterArrowRightElChange");
java.lang.Object _afterAutoPlayChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterAutoPlayChange");
java.lang.Object _afterBodyContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterBodyContentChange");
java.lang.Object _afterBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterBoundingBoxChange");
java.lang.Object _afterCaptionChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCaptionChange");
java.lang.Object _afterCaptionElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCaptionElChange");
java.lang.Object _afterCaptionFromTitleChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCaptionFromTitleChange");
java.lang.Object _afterCenteredChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCenteredChange");
java.lang.Object _afterCloseElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCloseElChange");
java.lang.Object _afterConstrainChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterConstrainChange");
java.lang.Object _afterContentBoxChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterContentBoxChange");
java.lang.Object _afterCssClassChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCssClassChange");
java.lang.Object _afterCurrentIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterCurrentIndexChange");
java.lang.Object _afterDelayChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterDelayChange");
java.lang.Object _afterDestroy = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterDestroy");
java.lang.Object _afterDestroyedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterDestroyedChange");
java.lang.Object _afterDisabledChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterDisabledChange");
java.lang.Object _afterFillHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterFillHeightChange");
java.lang.Object _afterFocusedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterFocusedChange");
java.lang.Object _afterFooterContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterFooterContentChange");
java.lang.Object _afterHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterHeaderContentChange");
java.lang.Object _afterHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterHeightChange");
java.lang.Object _afterHideClassChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterHideClassChange");
java.lang.Object _afterIdChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterIdChange");
java.lang.Object _afterImageAnimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterImageAnimChange");
java.lang.Object _afterImageChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterImageChange");
java.lang.Object _afterInfoElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterInfoElChange");
java.lang.Object _afterInfoTemplateChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterInfoTemplateChange");
java.lang.Object _afterInit = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterInit");
java.lang.Object _afterInitializedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterInitializedChange");
java.lang.Object _afterLinksChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterLinksChange");
java.lang.Object _afterLoad = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterLoad");
java.lang.Object _afterLoaderChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterLoaderChange");
java.lang.Object _afterLoadingChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterLoadingChange");
java.lang.Object _afterLoadingElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterLoadingElChange");
java.lang.Object _afterMaxHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterMaxHeightChange");
java.lang.Object _afterMaxWidthChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterMaxWidthChange");
java.lang.Object _afterModalChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterModalChange");
java.lang.Object _afterPaginatorChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPaginatorChange");
java.lang.Object _afterPaginatorElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPaginatorElChange");
java.lang.Object _afterPaginatorInstanceChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPaginatorInstanceChange");
java.lang.Object _afterPausedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPausedChange");
java.lang.Object _afterPausedLabelChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPausedLabelChange");
java.lang.Object _afterPlayingChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPlayingChange");
java.lang.Object _afterPlayingLabelChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPlayingLabelChange");
java.lang.Object _afterPreloadAllImagesChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPreloadAllImagesChange");
java.lang.Object _afterPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterPreventOverlapChange");
java.lang.Object _afterRenderChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterRenderChange");
java.lang.Object _afterRenderedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterRenderedChange");
java.lang.Object _afterRepeatChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterRepeatChange");
java.lang.Object _afterRequest = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterRequest");
java.lang.Object _afterShimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterShimChange");
java.lang.Object _afterShowArrowsChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterShowArrowsChange");
java.lang.Object _afterShowCloseChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterShowCloseChange");
java.lang.Object _afterShowPlayerChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterShowPlayerChange");
java.lang.Object _afterSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterSrcNodeChange");
java.lang.Object _afterStringsChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterStringsChange");
java.lang.Object _afterTabIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterTabIndexChange");
java.lang.Object _afterToolbarChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterToolbarChange");
java.lang.Object _afterTotalLinksChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterTotalLinksChange");
java.lang.Object _afterUseOriginalImageChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterUseOriginalImageChange");
java.lang.Object _afterVisibleChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterVisibleChange");
java.lang.Object _afterContentUpdate = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterContentUpdate");
java.lang.Object _afterRender = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterRender");
java.lang.Object _afterWidthChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterWidthChange");
java.lang.Object _afterXChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterXChange");
java.lang.Object _afterXyChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterXyChange");
java.lang.Object _afterYChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterYChange");
java.lang.Object _afterZIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:afterZIndexChange");
java.lang.Object _onAlignChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onAlignChange");
java.lang.Object _onAnim = (java.lang.Object)request.getAttribute("alloy:image-gallery:onAnim");
java.lang.Object _onAnimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onAnimChange");
java.lang.Object _onArrowLeftElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onArrowLeftElChange");
java.lang.Object _onArrowRightElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onArrowRightElChange");
java.lang.Object _onAutoPlayChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onAutoPlayChange");
java.lang.Object _onBodyContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onBodyContentChange");
java.lang.Object _onBoundingBoxChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onBoundingBoxChange");
java.lang.Object _onCaptionChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCaptionChange");
java.lang.Object _onCaptionElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCaptionElChange");
java.lang.Object _onCaptionFromTitleChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCaptionFromTitleChange");
java.lang.Object _onCenteredChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCenteredChange");
java.lang.Object _onCloseElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCloseElChange");
java.lang.Object _onConstrainChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onConstrainChange");
java.lang.Object _onContentBoxChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onContentBoxChange");
java.lang.Object _onCssClassChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCssClassChange");
java.lang.Object _onCurrentIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onCurrentIndexChange");
java.lang.Object _onDelayChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onDelayChange");
java.lang.Object _onDestroy = (java.lang.Object)request.getAttribute("alloy:image-gallery:onDestroy");
java.lang.Object _onDestroyedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onDestroyedChange");
java.lang.Object _onDisabledChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onDisabledChange");
java.lang.Object _onFillHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onFillHeightChange");
java.lang.Object _onFocusedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onFocusedChange");
java.lang.Object _onFooterContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onFooterContentChange");
java.lang.Object _onHeaderContentChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onHeaderContentChange");
java.lang.Object _onHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onHeightChange");
java.lang.Object _onHideClassChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onHideClassChange");
java.lang.Object _onIdChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onIdChange");
java.lang.Object _onImageAnimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onImageAnimChange");
java.lang.Object _onImageChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onImageChange");
java.lang.Object _onInfoElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onInfoElChange");
java.lang.Object _onInfoTemplateChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onInfoTemplateChange");
java.lang.Object _onInit = (java.lang.Object)request.getAttribute("alloy:image-gallery:onInit");
java.lang.Object _onInitializedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onInitializedChange");
java.lang.Object _onLinksChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onLinksChange");
java.lang.Object _onLoad = (java.lang.Object)request.getAttribute("alloy:image-gallery:onLoad");
java.lang.Object _onLoaderChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onLoaderChange");
java.lang.Object _onLoadingChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onLoadingChange");
java.lang.Object _onLoadingElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onLoadingElChange");
java.lang.Object _onMaxHeightChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onMaxHeightChange");
java.lang.Object _onMaxWidthChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onMaxWidthChange");
java.lang.Object _onModalChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onModalChange");
java.lang.Object _onPaginatorChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPaginatorChange");
java.lang.Object _onPaginatorElChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPaginatorElChange");
java.lang.Object _onPaginatorInstanceChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPaginatorInstanceChange");
java.lang.Object _onPausedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPausedChange");
java.lang.Object _onPausedLabelChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPausedLabelChange");
java.lang.Object _onPlayingChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPlayingChange");
java.lang.Object _onPlayingLabelChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPlayingLabelChange");
java.lang.Object _onPreloadAllImagesChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPreloadAllImagesChange");
java.lang.Object _onPreventOverlapChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onPreventOverlapChange");
java.lang.Object _onRenderChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onRenderChange");
java.lang.Object _onRenderedChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onRenderedChange");
java.lang.Object _onRepeatChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onRepeatChange");
java.lang.Object _onRequest = (java.lang.Object)request.getAttribute("alloy:image-gallery:onRequest");
java.lang.Object _onShimChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onShimChange");
java.lang.Object _onShowArrowsChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onShowArrowsChange");
java.lang.Object _onShowCloseChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onShowCloseChange");
java.lang.Object _onShowPlayerChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onShowPlayerChange");
java.lang.Object _onSrcNodeChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onSrcNodeChange");
java.lang.Object _onStringsChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onStringsChange");
java.lang.Object _onTabIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onTabIndexChange");
java.lang.Object _onToolbarChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onToolbarChange");
java.lang.Object _onTotalLinksChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onTotalLinksChange");
java.lang.Object _onUseOriginalImageChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onUseOriginalImageChange");
java.lang.Object _onVisibleChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onVisibleChange");
java.lang.Object _onContentUpdate = (java.lang.Object)request.getAttribute("alloy:image-gallery:onContentUpdate");
java.lang.Object _onRender = (java.lang.Object)request.getAttribute("alloy:image-gallery:onRender");
java.lang.Object _onWidthChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onWidthChange");
java.lang.Object _onXChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onXChange");
java.lang.Object _onXyChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onXyChange");
java.lang.Object _onYChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onYChange");
java.lang.Object _onZIndexChange = (java.lang.Object)request.getAttribute("alloy:image-gallery:onZIndexChange");

String uniqueId = StringPool.BLANK;

boolean useJavaScript = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useJavaScript"), true);
boolean useMarkup = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useMarkup"), true);

if (useMarkup) {
	uniqueId = MarkupUtil.getUniqueId();

	String prefix = StringPool.POUND.concat(uniqueId);

	if (!hasBoundingBox) {
		_boundingBox = prefix.concat("BoundingBox");

		options.put("boundingBox", _boundingBox);
	}

	if (!hasSrcNode && !hasContentBox) {
		_srcNode = prefix.concat("SrcNode");

		options.put("srcNode", _srcNode);
	}

	if (!hasSrcNode && hasContentBox) {
		_contentBox = prefix.concat("ContentBox");

		options.put("contentBox", _contentBox);
	}
}

_updateOptions(options, "align", _align);
_updateOptions(options, "anim", _anim);
_updateOptions(options, "arrowLeftEl", _arrowLeftEl);
_updateOptions(options, "arrowRightEl", _arrowRightEl);
_updateOptions(options, "autoPlay", _autoPlay);
_updateOptions(options, "imagegalleryBodyContent", _imagegalleryBodyContent);
_updateOptions(options, "boundingBox", _boundingBox);
_updateOptions(options, "caption", _caption);
_updateOptions(options, "captionEl", _captionEl);
_updateOptions(options, "captionFromTitle", _captionFromTitle);
_updateOptions(options, "centered", _centered);
_updateOptions(options, "closeEl", _closeEl);
_updateOptions(options, "constrain", _constrain);
_updateOptions(options, "contentBox", _contentBox);
_updateOptions(options, "cssClass", _cssClass);
_updateOptions(options, "currentIndex", _currentIndex);
_updateOptions(options, "delay", _delay);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "disabled", _disabled);
_updateOptions(options, "fillHeight", _fillHeight);
_updateOptions(options, "focused", _focused);
_updateOptions(options, "footerContent", _footerContent);
_updateOptions(options, "headerContent", _headerContent);
_updateOptions(options, "height", _height);
_updateOptions(options, "hideClass", _hideClass);
_updateOptions(options, "imagegalleryId", _imagegalleryId);
_updateOptions(options, "image", _image);
_updateOptions(options, "imageAnim", _imageAnim);
_updateOptions(options, "infoEl", _infoEl);
_updateOptions(options, "infoTemplate", _infoTemplate);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "links", _links);
_updateOptions(options, "loader", _loader);
_updateOptions(options, "loading", _loading);
_updateOptions(options, "loadingEl", _loadingEl);
_updateOptions(options, "maxHeight", _maxHeight);
_updateOptions(options, "maxWidth", _maxWidth);
_updateOptions(options, "modal", _modal);
_updateOptions(options, "paginator", _paginator);
_updateOptions(options, "paginatorEl", _paginatorEl);
_updateOptions(options, "paginatorInstance", _paginatorInstance);
_updateOptions(options, "paused", _paused);
_updateOptions(options, "pausedLabel", _pausedLabel);
_updateOptions(options, "playing", _playing);
_updateOptions(options, "playingLabel", _playingLabel);
_updateOptions(options, "preloadAllImages", _preloadAllImages);
_updateOptions(options, "preventOverlap", _preventOverlap);
_updateOptions(options, "render", _render);
_updateOptions(options, "rendered", _rendered);
_updateOptions(options, "repeat", _repeat);
_updateOptions(options, "shim", _shim);
_updateOptions(options, "showArrows", _showArrows);
_updateOptions(options, "showClose", _showClose);
_updateOptions(options, "showPlayer", _showPlayer);
_updateOptions(options, "srcNode", _srcNode);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "tabIndex", _tabIndex);
_updateOptions(options, "toolbar", _toolbar);
_updateOptions(options, "totalLinks", _totalLinks);
_updateOptions(options, "useOriginalImage", _useOriginalImage);
_updateOptions(options, "visible", _visible);
_updateOptions(options, "width", _width);
_updateOptions(options, "x", _x);
_updateOptions(options, "xy", _xy);
_updateOptions(options, "y", _y);
_updateOptions(options, "zIndex", _zIndex);
_updateOptions(options, "afterAlignChange", _afterAlignChange);
_updateOptions(options, "afterAnim", _afterAnim);
_updateOptions(options, "afterAnimChange", _afterAnimChange);
_updateOptions(options, "afterArrowLeftElChange", _afterArrowLeftElChange);
_updateOptions(options, "afterArrowRightElChange", _afterArrowRightElChange);
_updateOptions(options, "afterAutoPlayChange", _afterAutoPlayChange);
_updateOptions(options, "afterBodyContentChange", _afterBodyContentChange);
_updateOptions(options, "afterBoundingBoxChange", _afterBoundingBoxChange);
_updateOptions(options, "afterCaptionChange", _afterCaptionChange);
_updateOptions(options, "afterCaptionElChange", _afterCaptionElChange);
_updateOptions(options, "afterCaptionFromTitleChange", _afterCaptionFromTitleChange);
_updateOptions(options, "afterCenteredChange", _afterCenteredChange);
_updateOptions(options, "afterCloseElChange", _afterCloseElChange);
_updateOptions(options, "afterConstrainChange", _afterConstrainChange);
_updateOptions(options, "afterContentBoxChange", _afterContentBoxChange);
_updateOptions(options, "afterCssClassChange", _afterCssClassChange);
_updateOptions(options, "afterCurrentIndexChange", _afterCurrentIndexChange);
_updateOptions(options, "afterDelayChange", _afterDelayChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDisabledChange", _afterDisabledChange);
_updateOptions(options, "afterFillHeightChange", _afterFillHeightChange);
_updateOptions(options, "afterFocusedChange", _afterFocusedChange);
_updateOptions(options, "afterFooterContentChange", _afterFooterContentChange);
_updateOptions(options, "afterHeaderContentChange", _afterHeaderContentChange);
_updateOptions(options, "afterHeightChange", _afterHeightChange);
_updateOptions(options, "afterHideClassChange", _afterHideClassChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterImageAnimChange", _afterImageAnimChange);
_updateOptions(options, "afterImageChange", _afterImageChange);
_updateOptions(options, "afterInfoElChange", _afterInfoElChange);
_updateOptions(options, "afterInfoTemplateChange", _afterInfoTemplateChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterLinksChange", _afterLinksChange);
_updateOptions(options, "afterLoad", _afterLoad);
_updateOptions(options, "afterLoaderChange", _afterLoaderChange);
_updateOptions(options, "afterLoadingChange", _afterLoadingChange);
_updateOptions(options, "afterLoadingElChange", _afterLoadingElChange);
_updateOptions(options, "afterMaxHeightChange", _afterMaxHeightChange);
_updateOptions(options, "afterMaxWidthChange", _afterMaxWidthChange);
_updateOptions(options, "afterModalChange", _afterModalChange);
_updateOptions(options, "afterPaginatorChange", _afterPaginatorChange);
_updateOptions(options, "afterPaginatorElChange", _afterPaginatorElChange);
_updateOptions(options, "afterPaginatorInstanceChange", _afterPaginatorInstanceChange);
_updateOptions(options, "afterPausedChange", _afterPausedChange);
_updateOptions(options, "afterPausedLabelChange", _afterPausedLabelChange);
_updateOptions(options, "afterPlayingChange", _afterPlayingChange);
_updateOptions(options, "afterPlayingLabelChange", _afterPlayingLabelChange);
_updateOptions(options, "afterPreloadAllImagesChange", _afterPreloadAllImagesChange);
_updateOptions(options, "afterPreventOverlapChange", _afterPreventOverlapChange);
_updateOptions(options, "afterRenderChange", _afterRenderChange);
_updateOptions(options, "afterRenderedChange", _afterRenderedChange);
_updateOptions(options, "afterRepeatChange", _afterRepeatChange);
_updateOptions(options, "afterRequest", _afterRequest);
_updateOptions(options, "afterShimChange", _afterShimChange);
_updateOptions(options, "afterShowArrowsChange", _afterShowArrowsChange);
_updateOptions(options, "afterShowCloseChange", _afterShowCloseChange);
_updateOptions(options, "afterShowPlayerChange", _afterShowPlayerChange);
_updateOptions(options, "afterSrcNodeChange", _afterSrcNodeChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTabIndexChange", _afterTabIndexChange);
_updateOptions(options, "afterToolbarChange", _afterToolbarChange);
_updateOptions(options, "afterTotalLinksChange", _afterTotalLinksChange);
_updateOptions(options, "afterUseOriginalImageChange", _afterUseOriginalImageChange);
_updateOptions(options, "afterVisibleChange", _afterVisibleChange);
_updateOptions(options, "afterContentUpdate", _afterContentUpdate);
_updateOptions(options, "afterRender", _afterRender);
_updateOptions(options, "afterWidthChange", _afterWidthChange);
_updateOptions(options, "afterXChange", _afterXChange);
_updateOptions(options, "afterXyChange", _afterXyChange);
_updateOptions(options, "afterYChange", _afterYChange);
_updateOptions(options, "afterZIndexChange", _afterZIndexChange);
_updateOptions(options, "onAlignChange", _onAlignChange);
_updateOptions(options, "onAnim", _onAnim);
_updateOptions(options, "onAnimChange", _onAnimChange);
_updateOptions(options, "onArrowLeftElChange", _onArrowLeftElChange);
_updateOptions(options, "onArrowRightElChange", _onArrowRightElChange);
_updateOptions(options, "onAutoPlayChange", _onAutoPlayChange);
_updateOptions(options, "onBodyContentChange", _onBodyContentChange);
_updateOptions(options, "onBoundingBoxChange", _onBoundingBoxChange);
_updateOptions(options, "onCaptionChange", _onCaptionChange);
_updateOptions(options, "onCaptionElChange", _onCaptionElChange);
_updateOptions(options, "onCaptionFromTitleChange", _onCaptionFromTitleChange);
_updateOptions(options, "onCenteredChange", _onCenteredChange);
_updateOptions(options, "onCloseElChange", _onCloseElChange);
_updateOptions(options, "onConstrainChange", _onConstrainChange);
_updateOptions(options, "onContentBoxChange", _onContentBoxChange);
_updateOptions(options, "onCssClassChange", _onCssClassChange);
_updateOptions(options, "onCurrentIndexChange", _onCurrentIndexChange);
_updateOptions(options, "onDelayChange", _onDelayChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDisabledChange", _onDisabledChange);
_updateOptions(options, "onFillHeightChange", _onFillHeightChange);
_updateOptions(options, "onFocusedChange", _onFocusedChange);
_updateOptions(options, "onFooterContentChange", _onFooterContentChange);
_updateOptions(options, "onHeaderContentChange", _onHeaderContentChange);
_updateOptions(options, "onHeightChange", _onHeightChange);
_updateOptions(options, "onHideClassChange", _onHideClassChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onImageAnimChange", _onImageAnimChange);
_updateOptions(options, "onImageChange", _onImageChange);
_updateOptions(options, "onInfoElChange", _onInfoElChange);
_updateOptions(options, "onInfoTemplateChange", _onInfoTemplateChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onLinksChange", _onLinksChange);
_updateOptions(options, "onLoad", _onLoad);
_updateOptions(options, "onLoaderChange", _onLoaderChange);
_updateOptions(options, "onLoadingChange", _onLoadingChange);
_updateOptions(options, "onLoadingElChange", _onLoadingElChange);
_updateOptions(options, "onMaxHeightChange", _onMaxHeightChange);
_updateOptions(options, "onMaxWidthChange", _onMaxWidthChange);
_updateOptions(options, "onModalChange", _onModalChange);
_updateOptions(options, "onPaginatorChange", _onPaginatorChange);
_updateOptions(options, "onPaginatorElChange", _onPaginatorElChange);
_updateOptions(options, "onPaginatorInstanceChange", _onPaginatorInstanceChange);
_updateOptions(options, "onPausedChange", _onPausedChange);
_updateOptions(options, "onPausedLabelChange", _onPausedLabelChange);
_updateOptions(options, "onPlayingChange", _onPlayingChange);
_updateOptions(options, "onPlayingLabelChange", _onPlayingLabelChange);
_updateOptions(options, "onPreloadAllImagesChange", _onPreloadAllImagesChange);
_updateOptions(options, "onPreventOverlapChange", _onPreventOverlapChange);
_updateOptions(options, "onRenderChange", _onRenderChange);
_updateOptions(options, "onRenderedChange", _onRenderedChange);
_updateOptions(options, "onRepeatChange", _onRepeatChange);
_updateOptions(options, "onRequest", _onRequest);
_updateOptions(options, "onShimChange", _onShimChange);
_updateOptions(options, "onShowArrowsChange", _onShowArrowsChange);
_updateOptions(options, "onShowCloseChange", _onShowCloseChange);
_updateOptions(options, "onShowPlayerChange", _onShowPlayerChange);
_updateOptions(options, "onSrcNodeChange", _onSrcNodeChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTabIndexChange", _onTabIndexChange);
_updateOptions(options, "onToolbarChange", _onToolbarChange);
_updateOptions(options, "onTotalLinksChange", _onTotalLinksChange);
_updateOptions(options, "onUseOriginalImageChange", _onUseOriginalImageChange);
_updateOptions(options, "onVisibleChange", _onVisibleChange);
_updateOptions(options, "onContentUpdate", _onContentUpdate);
_updateOptions(options, "onRender", _onRender);
_updateOptions(options, "onWidthChange", _onWidthChange);
_updateOptions(options, "onXChange", _onXChange);
_updateOptions(options, "onXyChange", _onXyChange);
_updateOptions(options, "onYChange", _onYChange);
_updateOptions(options, "onZIndexChange", _onZIndexChange);
%>

<%@ include file="init-ext.jsp" %>