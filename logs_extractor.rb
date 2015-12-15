def extract_message_id_and_subject_from(log_content)
  log_content.scan(/id=(.+@.+)T=("[^"]+")/)
end

def print(message_ids_with_subjects)
  message_ids_with_subjects.each do |pair|
    puts "message_id: #{pair.first} with subject #{pair.last}"
  end
end

file = File.open('test-sample.log', 'r')

log_content = file.read
file.close

print(extract_message_id_and_subject_from(log_content))