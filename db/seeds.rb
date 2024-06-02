BigNews.delete_all

titles = [
  "Новость 1",
  "Новость 2",
  "Новость 3",
  "Новость 4",
  "Новость 5",
  "Новость 6",
  "Новость 7",
  "Новость 8",
  "Новость 9",
  "Новость 10"
]

contents = [
  "incidunt augue. Phasellus aliquet sapien nec diam tristique, sed gravida ex malesuada. Nulla facilisi. Suspendisse
 ut libero vel nunc accumsan venenatis.",
  "Nullam vulputate tincidunt augue. Phasellus aliquet sapien nec diam tristique, sed gravida ex malesuada. Vivamus
 scelerisque dapibus ex, at vehicula velit aliquam in. Vestibulum vel nisi vitae justo ultrices placerat. Proin posuere
 ipsum in nisl dignissim, ut suscipit dolor sodales. Proin et vestibulum dui. In viverra turpis in mi congue, at
 vehicula velit ullamcorper.",
  "Vestibulum vel nisi vitae justo ultrices placerat. Proin posuere ipsum in nisl dignissim, ut suscipit dolor sodales.
 Proin et vestibulum dui. In viverra turpis in mi congue, at vehicula velit ullamcorper. Nullam a tincidunt odio.
 Integer posuere blandit libero, nec facilisis nisl lobortis ut. Vivamus in dolor mi. Integer ut vestibulum tortor.
 Vestibulum nec diam non lorem porttitor hendrerit non a dui.",
  "Proin posuere ipsum in nisl dignissim, ut suscipit dolor sodales. Proin et vestibulum dui. In viverra turpis in mi
 congue, at vehicula velit ullamcorper. Nullam a tincidunt odio. Integer posuere blandit libero, nec facilisis nisl
 lobortis ut. Vivamus in dolor mi. Integer ut vestibulum tortor. Vestibulum nec diam non lorem porttitor hendrerit
 non a dui. Quisque placerat justo id magna ullamcorper, quis aliquet nisl commodo.",
  "Nullam a tincidunt odio. Integer posuere blandit libero, nec facilisis nisl lobortis ut. Vivamus in dolor mi. Integer
 ut vestibulum tortor. Vestibulum nec diam non lorem porttitor hendrerit non a dui. Quisque placerat justo id magna
 ullamcorper, quis aliquet nisl commodo. Ut tristique ipsum eu leo scelerisque, id rhoncus sapien convallis. Morbi in
 turpis vel nunc aliquam lobortis. Duis eu risus eu enim vulputate posuere vel nec magna.",
  "Vivamus in dolor mi. Integer ut vestibulum tortor. Vestibulum nec diam non lorem porttitor hendrerit non a dui.
 Quisque placerat justo id magna ullamcorper, quis aliquet nisl commodo. Ut tristique ipsum eu leo scelerisque, id
 rhoncus sapien convallis. Morbi in turpis vel nunc aliquam lobortis. Duis eu risus eu enim vulputate posuere vel nec
 magna. Suspendisse in dolor justo. Aliquam erat volutpat.",
  "Vestibulum nec diam non lorem porttitor hendrerit non a dui. Quisque placerat justo id magna ullamcorper, quis
 aliquet nisl commodo. Ut tristique ipsum eu leo scelerisque, id rhoncus sapien convallis. Morbi in turpis vel nunc
 aliquam lobortis. Duis eu risus eu enim vulputate posuere vel nec magna. Suspendisse in dolor justo. Aliquam erat
 volutpat. Donec a odio leo.",
  "incidunt augue. Phasellus aliquet sapien nec diam tristique, sed gravida ex malesuada. Nulla facilisi. Suspendisse
 ut libero vel nunc accumsan venenatis.",
  "Nullam vulputate tincidunt augue. Phasellus aliquet sapien nec diam tristique, sed gravida ex malesuada. Vivamus
 scelerisque dapibus ex, at vehicula velit aliquam in. Vestibulum vel nisi vitae justo ultrices placerat. Proin posuere
 ipsum in nisl dignissim, ut suscipit dolor sodales. Proin et vestibulum dui. In viverra turpis in mi congue, at
 vehicula velit ullamcorper.",
  "Vestibulum vel nisi vitae justo ultrices placerat. Proin posuere ipsum in nisl dignissim, ut suscipit dolor sodales.
 Proin et vestibulum dui. In viverra turpis in mi congue, at vehicula velit ullamcorper. Nullam a tincidunt odio.
 Integer posuere blandit libero, nec facilisis nisl lobortis ut. Vivamus in dolor mi. Integer ut vestibulum tortor.
 Vestibulum nec diam non lorem porttitor hendrerit non a dui."
]


10.times do |n|
  image_path = Rails.root.join("path/to/image_#{n + 1}.jpg")
  BigNews.create!(
    title: titles[n],
    content: contents[n],
    image: File.open(image_path),
    visible: n.even?
  )
end

puts "Создано #{BigNews.count} новостей"
