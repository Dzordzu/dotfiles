# Dzordzu Dotfiles (DDF) / Polybar

Module that handles polybar config. Features:
- Separated configuration, but single config file
- Multiple bars configuration via variables
- Color schemes via variables

## Variables

See defaults in order to get examples

### ddf_polybar_colors
Dictionary. Colors in hex

| Key         |
|-------------|
| main        |
| secondary   |
| critical    |
| warning     |
| improvement |

### ddf_polybar_fonts:
Dictionary of the following objects
```
{{name}}:
  font: {{system font name}}
  size: {{font_size}}
  vertical_offset: {{offset}}
```

### ddf_polybar_bars

Dictionary. Keys are bar names. Main polybar has to be named `default`

```

{{bar_name}}:
  props: {{properties that will be inserted into a config file; nesting is translated into '-' character
  {{position}}: {{list of modules}}
  fonts: {{list of fonts}}


```
## TODO
- [x] Readme
- [x] Meta
- [x] Defaults
- [ ] Tasks
- [ ] Templates
