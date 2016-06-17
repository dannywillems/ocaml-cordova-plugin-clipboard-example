let on_device_ready _ =
  Cordova_clipboard.copy "Hello world 2" ();
  Cordova_clipboard.paste (fun str -> Jsoo_lib.alert str) ()

let _ =
  Cordova.Event.device_ready on_device_ready
