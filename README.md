# Active Scaffold Export
### An [active scaffold](https://github.com/activescaffold/active_scaffold) addon to let it export data in CSV format

####How to?
Easy. First get [active scaffold](https://github.com/activescaffold/active_scaffold) if you haven't yet. 
Then, add this to your Gemfile:
```
gem 'active_scaffold_export'
```
if you're using REE or Ruby 1.8.7, you need to add backports gem as well as fastercsv since REE lacks ruby 1.9 streaming features and fastercsv is in core in 1.9
```
gem 'backports'
gem 'fastercsv'
```

Remember to bundle install.
Add to application.css:
```
 *= require active_scaffold_export
```

Now let's add it to controller, inside active_scaffold config block:
```ruby
conf.actions.add :export
# you can filter or sort columns if you want
conf.export.columns = %w(name last_name phone address) 
# you can define a default values for the exporting form
conf.export.default_deselected_columns = %w(phone address)
conf.export.default_delimiter = ";"
conf.export.force_quotes = "true"
```
And enjoy happy exporting :)

### Security
It's controlled the same way as Active Scaffold. The extra actions added are:
* **:show_export** for the options form
* **:export** for retrieving the data
Tested with AS internal security and [Cancan](https://github.com/ryanb/cancan)

### Translations 
Go in the same active scaffold scope:
```yaml
active_scaffold:
    columns_for_export: Columnas para exportar
    export_options: Opciones de exportación
    this_page: esta página
    all_pages: todas las páginas 
```

This gem has not been tested in other rubies than REE and Ruby 1.9. 
For contact, help, support, comments, please use Active Scaffold official mailing list  activescaffold@googlegroups.com

