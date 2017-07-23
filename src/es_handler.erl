-module(es_handler).
 
-export([init/2]).
 
-define(JSON, #{<<"content-type">> => <<"application/json">>}).
-define(MSG, <<"hello world">>). 

init(Req0, State) ->
  {ok, Vsn} = application:get_key(example_service, vsn),
  Req = cowboy_req:reply(200, ?JSON, jsone:encode(#{<<"vsn">> => list_to_binary(Vsn), <<"msg">> => ?MSG}), Req0),
  {ok, Req, State}.
