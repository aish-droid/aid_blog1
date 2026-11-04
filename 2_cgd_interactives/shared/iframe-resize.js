// CGD iframe resize contract, per interactive-coding-standard.md.
// Reports document.body height to cgdev.org so the host can size the iframe.
(function () {
  var PARENT_ORIGIN = 'https://www.cgdev.org';
  var lastHeight = -1;

  function measure() {
    // The host sets height on the <iframe> element, not on <body>, so <body>
    // is never stretched and this value shrinks as well as grows.
    return Math.ceil(document.body.getBoundingClientRect().height);
  }

  function report() {
    var height = measure();
    if (height <= 0 || height === lastHeight) return;
    lastHeight = height;
    window.parent.postMessage({ type: 'cgd-iframe-resize', height: height }, PARENT_ORIGIN);
  }

  // Initial layout, plus a re-report once web fonts settle (they can change
  // text wrapping and therefore height).
  window.addEventListener('load', report);
  if (document.fonts && document.fonts.ready) {
    document.fonts.ready.then(report);
  }

  // Any later change to content height.
  if (window.ResizeObserver) {
    new ResizeObserver(report).observe(document.body);
  } else {
    window.addEventListener('resize', report);
  }
})();
