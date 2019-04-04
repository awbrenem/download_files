
rp = 'http://research.ssl.berkeley.edu/data/spp/data/sci/fields/staging/l1/dfb_wf01/2018/11/'
lp = '/Users/aaronbreneman/data/spp/dfb_wf01'
rf = 'spp_fld_l1_dfb_wf01_20181101_v00.cdf'

;  rp = 'http://themis.ssl.berkeley.edu/data/themis/tha/l2/fgm/2013/'
;  lp = '/Users/aaronbreneman/data/themis/tha/l2/fgm/'

  dates = strtrim(indgen(31)+1,2)
  dates[0:8] = '0' + dates[0:8]

;  rf = 	'tha_l2_efi_201301'+dates+'_v??.cdf'
  rf = 'tha_l2_fgm_20130101_v01.cdf'
;tha_l2_fgm_20130105_v01.cdf
download_online_datafiles,rp,rf,lp,files_loaded=files



fn = 'tha_l2_fgm_20130101_v01.cdf'
