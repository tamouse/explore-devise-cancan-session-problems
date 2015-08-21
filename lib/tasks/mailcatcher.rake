namespace :mailcatcher do
  desc "start up mailcatcher daemon"
  task :start do |t|
    sh 'mailcatcher --ip 0.0.0.0'
  end

  desc "start up mailcatcher in foreground"
  task :run do |t|
    sh 'mailcatcher --ip 0.0.0.0 -f'
  end
end
