# Copyright 2009 The Go Authors. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

include $(GOROOT)/src/Make.$(GOARCH)

TARG=redis
GOFILES=\
	redis.go\

include $(GOROOT)/src/Make.pkg

format:
	gofmt -spaces=true -tabindent=false -tabwidth=4 -w redis.go
	gofmt -spaces=true -tabindent=false -tabwidth=4 -w redis_test.go
	gofmt -spaces=true -tabindent=false -tabwidth=4 -w redis-load.go

