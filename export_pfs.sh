rm pdfs/*
cd raw_notes
# processes put into background for maximum speed
for file in *.xopp ; do xournalpp -p "../pdfs/${file%.xopp}.pdf" "${file}" &> /dev/null & done ;

raws=$(ls -l . | wc -l)
curr_pdfs=$(ls -l ../pdfs/ | wc -l)

while [[ $raws != $curr_pdfs ]]
do
	sleep 1
	curr_pdfs=$(ls -l ../pdfs/ | wc -l)
done

echo "CREATED PDFS"
