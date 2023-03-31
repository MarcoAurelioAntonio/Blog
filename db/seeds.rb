# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users
first_user = User.create(name: 'Gustavo', photo: 'https://img.freepik.com/premium-photo/fun-3d-cartoon-yellow-character_183364-17615.jpg', bio: 'John Smith is a senior credit analyst at ABC Bank with over a decade of experience in risk analysis for banks and other lending institutions. He holds a Bachelor of Science degree in business administration from the State University of California. Smith is credited with creating a unit in ABC Bank to counteract cyber fraud in the credit department.')
second_user = User.create(name: 'Tom', photo: 'https://img.freepik.com/free-photo/3d-rendering-zoom-call-avatar_23-2149556783.jpg?w=740&t=st=1675977075~exp=1675977675~hmac=c9146e8131dd1f51cb7ea7290c9589348eadb77dce82b04da98f67090d1c9934', bio: 'He is the organizer of the Annual Credit Risk Trends conference in New York, which brings together professionals from across the United States to discuss credit risk analysis, using technology to manage risk, and how banks can better position themselves to deal with emerging credit risk issues.')
third_user = User.create(name: 'Lilly', photo: 'https://img.freepik.com/free-photo/3d-rendering-zoom-call-avatar_23-2149556780.jpg?w=740&t=st=1675976926~exp=1675977526~hmac=94dcb44bac83e594df6c9324c2d75e3f34a2b786843734624bfc19a3c5ec8b7d', bio: 'At work, Smith developed an internal stress management guide to help employees manage stress and work pressure effectively. During the weekend, he likes to go hunting with his dog Bingo or preparing grilled delicacies in his backyard.')
fourth_user = User.create(name: 'Ariel', photo: 'https://img.freepik.com/free-photo/3d-rendering-zoom-call-avatar_23-2149556785.jpg?w=740&t=st=1675976814~exp=1675977414~hmac=50d182a4fa4f210bc23ebf26046a69abd1ea8e770ec61fdb49b283c9d795dee2', bio: 'When writing a professional bio, it is not mandatory to include personal details, such as hobbies, personal history, favorite TV shows, and unique interests. However, including personal details can help paint you as a well-rounded person and will more likely allow your audience to establish a more personal connection with you.')

# Posts
first_post = Post.create(author: first_user, title: 'What is Lorem Ipsum', text: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum')
second_post = Post.create(author: first_user, title: 'Lorem Ipsum Why do we use it', text: 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like) It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using Content here, content here, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for lorem ipsum will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).')
third_post = Post.create(author: first_user, title: 'Lorem Ipsum Where does it come from', text: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.')
fourth_post = Post.create(author: first_user, title: 'Lorem Ipsum Where can I get some', text: 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.')
fifth_post = Post.create(author: second_user, title: 'Lorem Ipsum 1', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
sixth_post = Post.create(author: second_user, title: 'Lorem Ipsum 2', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
seventh_post = Post.create(author: second_user, title: 'Lorem Ipsum 3', text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tristique quis lacus ut dictum. Nulla facilisi. Nam consectetur urna eu risus cursus venenatis. Nam rhoncus maximus ante. Aenean vitae volutpat nisl, sed hendrerit arcu. Proin quis mi eu dolor scelerisque volutpat. Nulla ultricies sollicitudin erat, nec tincidunt libero vehicula pharetra. Nunc risus nulla, commodo ut ex ut, elementum vestibulum ligula. Cras eleifend faucibus tortor a porttitor.')
eighth_post = Post.create(author: third_user, title: 'Ipsum 1', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
ninht_post = Post.create(author: third_user, title: 'Ipsum 2', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
tenth_post = Post.create(author: fourth_user, title: 'Lorem 1', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')
eleventh_post = Post.create(author: fourth_user, title: 'Lorem 2', text: 'Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat Vivamus libero libero, elementum in rhoncus in, porttitor quis orci. Sed auctor augue euismod est faucibus ultrices. Duis placerat finibus ligula, aliquet congue sapien molestie sit amet. Suspendisse at magna elit. Suspendisse enim dui, vehicula ac commodo quis, placerat at lorem. Maecenas finibus, ante eu tincidunt auctor, lectus odio facilisis metus, ut aliquam elit sapien ac nibh. Donec eleifend lacus vel tortor pharetra feugiat.')

# Comments
first_comment = Comment.create(post: first_post, author: first_user, text: 'This is my first comment')
second_comment = Comment.create(post: first_post, author: second_user, text: 'This is my second comment' )
third_comment = Comment.create(post: first_post, author: third_user, text: 'This is my third comment')
fourth_comment = Comment.create(post: first_post, author: fourth_user, text: 'This is my fourth comment')
fifth_comment = Comment.create(post: first_post, author: first_user, text: 'This is my fifth comment')
sixth_comment = Comment.create(post: first_post, author: second_user, text: 'This is my sixth comment')
seventh_comment = Comment.create(post: first_post, author: third_user, text: 'This is my seventh comment')
eighth_comment = Comment.create(post: first_post, author: fourth_user, text: 'This is my eighth comment')
ninth_comment = Comment.create(post: first_post, author: first_user, text: 'This is my ninth comment')
tenth_comment = Comment.create(post: first_post, author: second_user, text: 'This is my tenth comment')
eleventh_comment = Comment.create(post: first_post, author: third_user, text: 'This is my eleventh comment')
twelfth_comment = Comment.create(post: first_post, author: fourth_user, text: 'This is my twelfth comment')
thirteenth_comment = Comment.create(post: first_post, author: first_user, text: 'This is my thirteenth comment')
fourteenth_comment = Comment.create(post: first_post, author: second_user, text: 'This is my fourteenth comment')

fifteenth_comment = Comment.create(post: second_post, author: third_user, text: 'This is my fifteenth comment')
sixteenth_comment = Comment.create(post: second_post, author: fourth_user, text: 'This is my sixteenth comment')
seventeenth_comment = Comment.create(post: second_post, author: first_user, text: 'This is my seventeenth comment')
eighteenth_comment = Comment.create(post: second_post, author: second_user, text: 'This is my eighteenth comment')
nineteenth_comment = Comment.create(post: second_post, author: third_user, text: 'This is my nineteenth comment')
twentieth_comment = Comment.create(post: second_post, author: fourth_user, text: 'This is my twentieth comment')
twenty_first_comment = Comment.create(post: second_post, author: first_user, text: 'This is my twenty-first comment')
twenty_second_comment = Comment.create(post: second_post, author: second_user, text: 'This is my twenty-second comment')
twenty_third_comment = Comment.create(post: second_post, author: third_user, text: 'This is my twenty-third comment')
twenty_fourth_comment = Comment.create(post: second_post, author: fourth_user, text: 'This is my twenty-fourth comment')
twenty_fifth_comment = Comment.create(post: second_post, author: first_user, text: 'This is my twenty-fifth comment')
twenty_sixth_comment = Comment.create(post: second_post, author: second_user, text: 'This is my twenty-sixth comment')
twenty_seventh_comment = Comment.create(post: second_post, author: third_user, text: 'This is my twenty-seventh comment')
twenty_eighth_comment = Comment.create(post: second_post, author: fourth_user, text: 'This is my twenty-eighth comment')

twenty_ninth_comment = Comment.create(post: third_post, author: first_user, text: 'This is my twenty-ninth comment')
thirtieth_comment = Comment.create(post: third_post, author: second_user, text: 'This is my thirtieth comment')
thirty_first_comment = Comment.create(post: third_post, author: third_user, text: 'This is my thirty-first comment')
thirty_second_comment = Comment.create(post: third_post, author: fourth_user, text: 'This is my thirty-second comment')
thirty_third_comment = Comment.create(post: third_post, author: first_user, text: 'This is my thirty-third comment')
thirty_fourth_comment = Comment.create(post: third_post, author: second_user, text: 'This is my thirty-fourth comment')
thirty_fifth_comment = Comment.create(post: third_post, author: third_user, text: 'This is my thirty-fifth comment')
thirty_sixth_comment = Comment.create(post: third_post, author: fourth_user, text: 'This is my thirty-sixth comment')
thirty_seventh_comment = Comment.create(post: third_post, author: first_user, text: 'This is my thirty-seventh comment')
thirty_eighth_comment = Comment.create(post: third_post, author: second_user, text: 'This is my thirty-eighth comment')
thirty_ninth_comment = Comment.create(post: third_post, author: third_user, text: 'This is my thirty-ninth comment')

fortieth_comment = Comment.create(post: fourth_post, author: fourth_user, text: 'This is my fortieth comment')
forty_first_comment = Comment.create(post: fourth_post, author: first_user, text: 'This is my forty-first comment')

forty_second_comment = Comment.create(post: fifth_post, author: second_user, text: 'This is my forty-second comment')
forty_third_comment = Comment.create(post: fifth_post, author: third_user, text: 'This is my forty-third comment')

forty_fourth_comment = Comment.create(post: sixth_post, author: fourth_user, text: 'This is my forty-fourth comment')
forty_fifth_comment = Comment.create(post: sixth_post, author: first_user, text: 'This is my forty-fifth comment')
forty_sixth_comment = Comment.create(post: sixth_post, author: second_user, text: 'This is my forty-sixth comment')

forty_seventh_comment = Comment.create(post: seventh_post, author: third_user, text: 'This is my forty-seventh comment')
forty_eighth_comment = Comment.create(post: seventh_post, author: fourth_user, text: 'This is my forty-eighth comment')
forty_ninth_comment = Comment.create(post: seventh_post, author: first_user, text: 'This is my forty-ninth comment')

fiftieth_comment = Comment.create(post: eighth_post, author: second_user, text: 'This is my fiftieth comment')
fifty_first_comment = Comment.create(post: eighth_post, author: third_user, text: 'This is my fifty-first comment')
fifty_second_comment = Comment.create(post: eighth_post, author: fourth_user, text: 'This is my fifty-second comment')

fifty_third_comment = Comment.create(post: ninht_post, author: first_user, text: 'This is my fifty-third comment')
fifty_fourth_comment = Comment.create(post: ninht_post, author: second_user, text: 'This is my fifty-fourth comment')
fifty_fifth_comment = Comment.create(post: ninht_post, author: third_user, text: 'This is my fifty-fifth comment')

fifty_sixth_comment = Comment.create(post: tenth_post, author: fourth_user, text: 'This is my fifty-sixth comment')
fifty_seventh_comment = Comment.create(post: tenth_post, author: first_user, text: 'This is my fifty-seventh comment')
fifty_eighth_comment = Comment.create(post: tenth_post, author: second_user, text: 'This is my fifty-eighth comment')

fifty_ninth_comment = Comment.create(post: eleventh_post, author: third_user, text: 'This is my fifty-ninth comment')
sixtieth_comment = Comment.create(post: eleventh_post, author: fourth_user, text: 'This is my sixtieth comment')
sixty_first_comment = Comment.create(post: eleventh_post, author: first_user, text: 'This is my sixty-first comment')
sixty_second_comment = Comment.create(post: eleventh_post, author: second_user, text: 'This is my sixty-second comment')
sixty_third_comment = Comment.create(post: eleventh_post, author: third_user, text: 'This is my sixty-third comment')
sixty_fourth_comment = Comment.create(post: eleventh_post, author: fourth_user, text: 'This is my sixty-fourth comment')




# Likes
first_like = Like.create(post: first_post, author: first_user)
second_like = Like.create(post: fifth_post, author: second_user)
third_like = Like.create(post: first_post, author: third_user)
fourth_like = Like.create(post: first_post, author: fourth_user)

fifth_like = Like.create(post: second_post, author: first_user)
sixth_like = Like.create(post: second_post, author: second_user)
seventh_like = Like.create(post: seventh_post, author: third_user)
eighth_like = Like.create(post: second_post, author: fourth_user)


ninth_like = Like.create(post: third_post, author: first_user)
tenth_like = Like.create(post: fourth_post, author: second_user)
eleventh_like = Like.create(post: eighth_post, author: third_user)
twelfth_like = Like.create(post: third_post, author: fourth_user)

thirteenth_like = Like.create(post: fourth_post, author: first_user)
fourteenth_like = Like.create(post: fourth_post, author: second_user)
fifteenth_like = Like.create(post: fourth_post, author: third_user)
sixteenth_like = Like.create(post: eleventh_post, author: fourth_user)
seventeenth_like = Like.create(post: ninht_post, author: first_user)
