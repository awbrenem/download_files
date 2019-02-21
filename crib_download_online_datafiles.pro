
  rp = 'http://themis.ssl.berkeley.edu/data/themis/tha/l2/efi/2013/'
  lp = '/Users/aaronbreneman/data/themis/tha/l2/efi/'


  dates = strtrim(indgen(31)+1,2)
  dates[0:8] = '0' + dates[0:8]

  rf = 	'tha_l2_efi_201301'+dates+'_v??.cdf'

download_online_files,rp,rf,lp,files_loaded=files
