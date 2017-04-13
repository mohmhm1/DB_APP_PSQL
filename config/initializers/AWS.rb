AWS.config(
  :access_key_id => 'INPUT YOURS HERE',
  :secret_access_key => 'INPUT YOURS HERE'
)

S3_BUCKET =  AWS::S3.new.buckets['BUCKET']
