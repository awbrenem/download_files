;+
; NAME: download_online_files
;
; SYNTAX:
;
; PURPOSE:
;
; INPUT: N/A
;
; OUTPUT: N/A
;
; KEYWORDS:
;   rp = remote path (e.g. 'http://themis.ssl.berkeley.edu/data/themis/tha/l2/efi/2013/')
;   rf = remote file (e.g. 'tha_l2_efi_20130131_v??.cdf')
;   lp = local path  (e.g. '/Users/aaronbreneman/data/themis/tha/l2/efi/')
;     NOTE: don't use ~/
;   files --> array of returned file(s)
;
; HISTORY:
;	Created Feb 21, 2019, Aaron Breneman
;
; NOTES:
;
;
; VERSION:
;   $LastChangedBy: aaronbreneman $
;   $LastChangedDate: 2018-12-06 13:00:19 -0600 (Thu, 06 Dec 2018) $
;   $LastChangedRevision: 26268 $
;   $URL: svn+ssh://thmsvn@ambrosia.ssl.berkeley.edu/repos/spdsoft/trunk/general/missions/rbsp/ect/rbsp_load_mageis_l2.pro $
;
;-


pro download_online_datafiles,rp,rf,lp,files_loaded=files


;  rp = 'http://themis.ssl.berkeley.edu/data/themis/tha/l2/efi/2013/'
;  rf = 	'tha_l2_efi_20130131_v??.cdf'
;  lp = '/Users/aaronbreneman/data/themis/tha/l2/efi/'

  files = spd_download(remote_path=rp,remote_file=rf,local_path=lp,/last_version)


;  prefix=rbspx+'_ect_mageis_L'+slevel+'_'
;  dprint,dlevel=3,verbose=verbose,relpathnames,/phelp

;  cdf2tplot,file=files,varformat=varformat,all=0,prefix=prefix,suffix=suf,verbose=vb, $
;  tplotnames=tns,/convert_int1_to_int2,get_support_data=1 ; load data into tplot variables

end
