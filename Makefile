app_name = ServeThis
app_version = 1.0
bundle_id = org.amake.$(app_name)

.PHONY: all app sign zip clean

all: app sign zip

app: work/$(app_name).app

zip: dist/$(app_name)-$(app_version).zip

clean:
	rm -rf work dist

work dist:
	mkdir -p $(@)

work/%.app: %.sh | work
	platypus \
		--overwrite \
		--name $(*) \
		--app-version $(app_version) \
		--interface-type 'Text Window' \
		--bundle-identifier $(bundle_id) \
		--interpreter-args bash \
		$(^) \
		$(@)

sign: work/$(app_name).app
	if [ ! -z "$(codesign_id)" ]; then codesign -f -s "$(codesign_id)" $(^); fi

dist/%-$(app_version).zip: work/%.app | dist
	cd $(^D); zip -r $(@F) .
	mv $(^D)/$(@F) $(@)
