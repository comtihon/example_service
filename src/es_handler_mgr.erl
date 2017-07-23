-module(es_handler_mgr).

-define(LISTENER, example_listener).
-define(ROUTES(R), cowboy_router:compile([{'_', R}])).

-export([init/0]).

init() ->
  Dispatch = ?ROUTES([{'_', es_handler, #{}}]),
  {ok, _} = cowboy:start_clear(?LISTENER, 100, [{port, 8080}], #{env => #{dispatch => Dispatch}}),
  ok.
