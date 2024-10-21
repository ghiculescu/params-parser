To replicate, start the app (`bin/rails s`) then go to http://localhost:3000/. Observe what params get printed.

See `Gemfile` for version notes, but basically:

If you use Rails `7a7b5baea6851e1a0c65492d85bba419ec160e16` and Rack 2.2.9, you get `"amp"=>nil, "user_id"=>"123"`
Any other combinations, you get `"amp;user_id"=>"123"`
So the specific issue is that something (possibly https://github.com/rails/rails/pull/53193) broke compatability with Rack 2.x for this specific use case.
