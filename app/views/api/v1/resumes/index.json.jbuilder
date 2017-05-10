json.array! @resumes.each do |resume|
  json.id resume["id"]
  json.first_name resume["first_name"]
  json.last_name resume["last_name"]
  json.email resume["email"]
  json.phone_number resume["phone_number"]
  json.short_bio resume["short_bio"]
  json.linkedin_url resume["linkedin_url"]
  json.twitter_handle resume["twitter_handle"]
  json.blog_url resume["blog_url"]
  json.resume_url resume["resume_url"]
  json.github_url resume["github_url"]
  json.photo_url resume["photo_url"]
  json.experiences.id resume["experiences.id"]
  json.experiences.start_date resume["experiences.start_date"]

end