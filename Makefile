all: compile

compile:
	./rebar compile

doc:
	./rebar doc

clean:
	./rebar clean

test: all
	erl -noshell -pa ebin -s ibrowse -s ibrowse_test unit_tests \
	-s ibrowse_test verify_chunked_streaming \
	-s ibrowse_test test_chunked_streaming_once \
	-s erlang halt