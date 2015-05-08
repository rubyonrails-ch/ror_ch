Fabricator(:participant) do
  meetup_id '1539023625'
  name 'Georg Kunz'
  image_url 'http://photos1.meetupstatic.com/photos/member/e/5/4/a/thumb_242278698.jpeg'
  status 'yes'
  event { Fabricate.build(:event) }
end
