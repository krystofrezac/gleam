-module(gleam_map).

-export([new/0, size/1, has_key/2, to_list/1, from_list/1, put/3, map_values/2, keys/1, values/1, filter/2]).

new() ->
    maps:new().

size(A) ->
    maps:size(A).

is_key(A, B) ->
    maps:is_key(A, B).

has_key(Map, Key) ->
    is_key(Key, Map).

to_list(A) ->
    maps:to_list(A).

from_list(A) ->
    maps:from_list(A).

erl_put(A, B, C) ->
    maps:put(A, B, C).

put(Map, Key, Value) ->
    erl_put(Key, Value, Map).

erl_map_values(A, B) ->
    maps:map(A, B).

map_values(Map, Fun) ->
    erl_map_values(Fun, Map).

keys(A) ->
    maps:keys(A).

values(A) ->
    maps:values(A).

erl_filter(A, B) ->
    maps:filter(A, B).

filter(Map, Fun) ->
    erl_filter(Fun, Map).
