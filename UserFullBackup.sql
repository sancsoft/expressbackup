exec expressmaint
   @database      = 'ALL_USER', 
   @optype        = 'DB',
   @backupfldr    = '{backup folder}',
   @reportfldr    = '{backup folder}',
   @verify        = 2,
   @dbretainunit  = 'weeks',
   @dbretainval   = 2,
   @rptretainunit = 'weeks',
   @rptretainval  = 1,
   @report        = 1