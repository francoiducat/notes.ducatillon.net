# Display a PDF in an HTML page

There are several ways to display a PDF inside an HTML page. Below are three common approaches, with notes on compatibility and a recommended Hugo shortcode method.

## 1. Using the `<embed>` tag

The `<embed>` tag is the simplest option, but some browsers (especially mobile) may not render PDFs inline.

```html
<embed src="https://yoursite.com/document.pdf" width="100%" height="400px" />
```

## 2. Using an `<iframe>` with Google Viewer

You can use an `<iframe>` to embed Google Docs Viewer. This works even if the browser can't render PDFs inline, but it requires the PDF to be accessible publicly by Google.

```html
<iframe src="https://docs.google.com/viewer?url=https://yoursite.com/document.pdf&embedded=true" style="width:100%; height:500px;" frameborder="0"></iframe>
```

### Notes on compatibility

- Not all browsers (notably some mobile browsers and iOS Safari) render PDFs inline — always provide a fallback link.
- `iframe` with Google Viewer requires a publicly accessible URL and may not be suitable for private or local development.
- For maximum cross-browser in-page rendering, consider using PDF.js, but that requires bundling additional JS and configuration.

### Result

Here is the shortcode in action (renders the PDF if supported):

{{< embedpdf "hugo_framework.pdf" >}}

Choose the method that matches your requirements: lightweight fallback links for simple use, Google Viewer for public hosted PDFs, or PDF.js for a fully controlled in-page viewer.
