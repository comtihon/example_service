-module(es_handler).
 
-export([init/2]).
 
-define(JSON, #{<<"content-type">> => <<"application/json">>}).

init(Req0, State) ->
  {ok, Vsn} = application:get_key(example_service, vsn),
  Path = cowboy_req:path(Req0),
  Qs = cowboy_req:qs(Req0),
  es_log:info("New request ~p : ~p", [Path, Qs]),
  {ok, Greeting} = application:get_env(example_service, greeting),
  Req = cowboy_req:reply(200, ?JSON,
    jsone:encode(#{<<"vsn">> => list_to_binary(Vsn), <<"msg">> => list_to_binary(Greeting)}), Req0),
  {ok, Req, State}.
