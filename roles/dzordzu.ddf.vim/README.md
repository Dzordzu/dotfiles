# Dzordzu Dotfiles (DDF) / VIM

Module that handles vim config. Features:
- Simple plugins configuration
- UltiSnips with jinja2
- Separated configuration, but single vimrc file
- Support for nvim and vim

## Variables

### ddf_vim_plugins

List of objects of type either dictionary or string.
Each object represents plugin. In case of string it is
name of the plugin

In case of dict

| Key    | Description                                                           |
|--------|-----------------------------------------------------------------------|
| name   | Self descriptive                                                      |
| params | Parameters in a'la JSON format that are applied to the plug           |
| config | Config file name of the plugin. If specified config file has to exist |

Expanded to
`Plug <name>, <params>`

#### Plugin specific config

By default ansible looks for the file named as the last part of the name of the plugin in a
`templates/plugin_specific/` directory. Example: `example/plugin` will look for a
`plugin.vimrc.j2`  file inside `templates/plugin_specific/` dir

If you specify config attribute for a plugin object, playbook will look for it instead of the modified name.

Example:
```yaml
- name: 'example/plugin'
  config: 'plugin_example'
```
will look for `templates/plugin_specific/plugin_example` file. **Note that if you specify `config` attribute,
config file has to be existent!**

### ddf_ultisnips_behaviour

- `link` (default) - to link directory from dotfiles to your configs
- `copy` - to just copy files

### ddf_ultisnips_force

If `true`: old dirs will be removed. Defaults to `false`

