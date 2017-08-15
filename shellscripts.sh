
#finds unchanged WooCommerce files in theme and removes them
pathToPlugin=../../../plugins/woocommerce/templates/; for file in **/*.*; do isDifferent=$(diff <(tr -d ' \n' < $file) <(tr -d ' \n' < $pathToPlugin$file)); if [ ! "$isDifferent" ]; then rm "$file"; fi done

#search and replace patterns in scss files
for file in ./**/*.scss; do sed -i -- "s/patternToRemove/patternToReplace/g" $file; done