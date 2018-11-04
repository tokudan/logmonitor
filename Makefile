FILES := logmonitor $(wildcard logmonitor.d/*)
DESTDIR ?= /opt/logmonitor

install:
	install -d ${DESTDIR}/bin
	install -D logmonitor ${DESTDIR}/bin/logmonitor
	install -D -d logmonitor.d ${DESTDIR}/logmonitor.d

logmonitor.tar: $(FILES)
	tar cf $@ $(FILES)

%.gz: %
	gzip -9 $<
