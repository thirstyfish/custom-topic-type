# name: custom-topic-type
# about: A Discourse plugin that adds the custom_topic_type attribute to the topics
# version: 0.1
# authors: thirstyfish

after_initialize do

  Topic.register_custom_field_type('custom_topic_type', :text)

  add_to_serializer(:basic_topic, :custom_topic_type) {object.custom_fields["custom_topic_type"]}

end