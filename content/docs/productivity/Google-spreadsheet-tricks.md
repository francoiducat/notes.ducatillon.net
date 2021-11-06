# Google spreadsheet tricks

## Remove characters from a string in a cell with Google spreadsheet

### Goal

Remove the first 2 characters from a string in cell D1 :

```
 =RIGHT(D1,LEN(D1)-2)
```

### Explanations

- `LEN(D1)` returns the length of the string in a cell.
- `RIGHT(D1, X)` returns a substring from the end.
First argument is the string.
Seconde argument is the length of the substring to return.

Alternatively, to remove the last 2 characters, use :

```
 =LEFT(D1,LEN(D1)-2)
```
