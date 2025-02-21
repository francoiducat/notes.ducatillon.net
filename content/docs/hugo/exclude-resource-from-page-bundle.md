
# Exclude a specific Resource from a Page Bundle

This code block prevents a specific image (resource) from being included in the page bundle.
This is useful when you want to exclude a specific image from being included in the page bundle.
In this example, the image `header.jpg` is excluded from the page bundle.

```html
    {{ $images := .Resources.ByType "image" }}
    {{ range $images }}

      <!-- Exclude header.jpg -->
      {{ $relPermalink := .RelPermalink }} <!-- Get the relative permalink of the image -->
      {{ $filename := index (split $relPermalink "/") (sub (len (split $relPermalink "/")) 1) }} <!-- Extract the filename -->
      {{ $baseFilename := (split $filename ".") }} <!-- Split the filename by "." -->
      {{ $baseFilename := index $baseFilename 0 }} <!-- Take the first part of the split result (before the dot) -->
      <span> {{ $filename }}</span>
      {{ if not (eq $baseFilename "header") }}  
      <!-- Exclude header.jpg -->

        {{ $image := .Resize "960x webp" }}      
        <img src="{{ $img_tmb.RelPermalink }}">

      {{ end }}
    {{ end }}
```
