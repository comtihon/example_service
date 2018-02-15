# Example service
[![Enot](https://enot.justtech.blog/badge?full_name=comtihon/example_service)](https://enot.justtech.blog)  
The purpose of this service is to show how easy it is to create and deploy Erlang services.
Please read following articles for more info: [create](https://justtech.blog/2018/01/07/create-erlang-service-with-enot/) and [deploy](https://justtech.blog/2018/02/11/erlang-service-easy-deploy-with-enot/)

## Install and Run
1. ensure you have [Enot](https://github.com/comtihon/enot) installed
2. `enot install comtihon/example_service`
3. visit `127.0.0.1:8080` to determine if service is running.

## Build and Run
0. clone this repo
1. ensure you have [Enot](https://github.com/comtihon/enot) and Erlang installed
2. `enot release`
3. `_rel/example_service/bin/example_service console`
4. visit `127.0.0.1:8080` to determine if service is running.

