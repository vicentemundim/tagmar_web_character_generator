// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function toggleWithEffect(target_id, toggler_id) {
  if ($(target_id).visible()) {
    $(target_id).blindUp({duration : .5});
    $(toggler_id).innerHTML = "[exibir]"
  }
  else {
    $(target_id).blindDown({duration : .5});
    $(toggler_id).innerHTML = "[esconder]"
  }
}