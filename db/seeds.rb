BigNews.delete_all

image_path1 = Rails.root.join('path/to/image1.jpg')
image_path2 = Rails.root.join('path/to/image2.jpg')
image_path3 = Rails.root.join('path/to/image3.jpg')

BigNews.create!(
  title: 'Новость 1',
  content: 'Содержание новости 1',
  image: File.open(image_path1),
  visible: true
)

BigNews.create!(
  title: 'Новость 2',
  content: 'Содержание новости 2',
  image: File.open(image_path2),
  visible: true
)

BigNews.create!(
  title: 'Новость 3',
  content: 'Содержание новости 3',
  image: File.open(image_path3),
  visible: false
)

puts "Создано #{BigNews.count} новостей"
