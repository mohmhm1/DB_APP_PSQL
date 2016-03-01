json.array!(@sites) do |site|
  json.extract! site, :id, :site, :location, :contacts, :email, :installed, :FSE, :PQandTraining, :FAS, :TrainedOn, :SxSerialNumber, :MappingTool, :RGQSN, :RgqSoftware, :SAReporter, :AssayPackage, :NGS, :NGSassay, :NGSSXSN, :ST401i, :ST401e, :SQ301, :SQSuite, :SQreporter, :NGSInstall, :NGSFSE, :NGSPQandTraining, :FAS
  json.url site_url(site, format: :json)
end
