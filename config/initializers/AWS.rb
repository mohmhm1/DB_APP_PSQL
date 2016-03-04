AWS.config(
  :access_key_id => 'AKIAJ4WY3D76YIH2B5GQ',
  :secret_access_key => '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'
)

S3_BUCKET =  AWS::S3.new.buckets['vela']