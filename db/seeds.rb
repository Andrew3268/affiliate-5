# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# example
# Ecommerce.create(user_id: 1, 
#                  category_id: ,
#                  pcategory_id: ,
#                  title: "",
#                  image_main: "", 
#                  image_01:"",
#                  image_02:"",
#                  image_03:"",
#                  image_04:"",
#                  intro: "",
#                  site_link: "",
#                  price_before: "",
#                  price_after: "",
#                  youtube_link_01: "",
#                  youtube_link_02: "",
#                  description: "",      
#                  description_01: "",
#                  description_02: "",
#                  description_03: "",
#                  description_04: "",
#                  description_05: "")   

########### For Account of Admin ##############
User.create(name: "Admin", email: "1111@naver.com", password: "11112222", admin: true)
########### End Account of Admin ##############


########### For Category of Price ##############
Category.create(name: "$20 - $50")
Category.create(name: "$50 - $100")
Category.create(name: "$100 - $200")
Category.create(name: "$200 - $300")
Category.create(name: "$300 - $400")
Category.create(name: "$400 - $500")
Category.create(name: "$500 - Max")
########### End Category of Price ##############

########### For Category of Product ##############
Pcategory.create(name: "Geek & Fun")
Pcategory.create(name: "Gadgets & Utility")
Pcategory.create(name: "Sports & Outdoor")
Pcategory.create(name: "Travel")
Pcategory.create(name: "Home & kitchen")
Pcategory.create(name: "Pet & Toys")
########### End Category of Product ##############


########### Start Products  ##############
#1
Ecommerce.create(user_id: 1,
                 category_id: 3,
                 pcategory_id: 2,
                 title: "Prynt",
                 image_main: "https://d21buns5ku92am.cloudfront.net/47910/images/160353-Prynt%20and%20photos-0e39c8-large-1427155286.png", 
                 image_01:"http://travel-ling.com/wp-content/uploads/2016/10/20161007_191518-1.jpg",
                 image_02:"https://cnet2.cbsistatic.com/img/tH4CKPFPP1dCzvZJFulHdKLuPeA=/1600x900/2017/05/22/5b64d36a-3a48-4674-9cd1-04ac65a6502d/graphite-lifestyle-3.png",
                 image_03:"http://www.girlabouttech.com/wp-content/uploads/2015/01/Prynt-In-Action-_-girlabouttech.com_.jpg",
                 image_04:"https://d39ya6rrfzruz.cloudfront.net/production/assets/home/Scan-d78080a3c2634150bc4d12d96742a286.gif",
                 intro: "Print instant photos from your phone! Simply attach the Prynt Case to your phone, take a photo and then create a short video. Then, print it out! When you hand your Prynt photo to a friend, they can use the Prynt app to unlock the hidden video clip, magically bringing your Prynt photo to life!",
                 site_link: "http://amzn.to/2es5aT6",
                 price_before: "0",
                 price_after: "144.99",
                 youtube_link_01: "https://www.youtube.com/embed/tUi7gFgEn8Q",
                 youtube_link_02: "https://www.youtube.com/embed/k_BZup8XFiM",
                 description: "The Prynt Pocket turns your iPhone into a palm-sized instant camera. Print any photo saved to your phone or favorite social networks, anywhere. But there's more. The Prynt app enables you to add a video inside your photo. When you share your Prynt photo with friends, they can use the Prynt app to unlock the video clip, magically bringing your Prynt photo to life!",
                 description_01: "Turn your iPhone into an instant camera ½ the size of the original Prynt Case, with an easy-to-remove paper cartridge",
                 description_02: "Print photos from your phone (even Instagram), or take new ones- printed in 30 seconds",
                 description_03: "Add a video to your Prynt and watch it come to life with the app",
                 description_04: "No ink necessary- photos are printed directly onto ZINK (zero ink) Sticker Paper- the only photo paper compatible with Prynt Pocket",
                 description_05: "Peel off the adhesive backing to turn any photo into a sticker!Compatible with the Apple iPhone 7 Plus, iPhone 7, iPhone SE, iPhone 6s Plus, iPhone 6s, iPhone 6 Plus, iPhone 5s, iPhone 5")

#2          
Ecommerce.create(user_id: 1, 
                 category_id: 1,
                 pcategory_id: 2,
                 title: "EcoDot",
                 image_main: "https://cnet2.cbsistatic.com/img/rBFEZeQLNwn1b8C-ef9UBzeijcU=/770x433/2016/09/29/25e69ef0-1367-4036-9df4-1c9d6924afed/new-echo-dot-product-photos-3.jpg", 
                 image_01:"https://content.jwplatform.com/thumbs/kVUfBnXl.jpg",
                 image_02:"https://i.ebayimg.com/00/s/MTAwMFgxMDAw/z/FmEAAOSw2gxYwgHv/$_86.JPG",
                 image_03:"http://cdn04.androidauthority.net/wp-content/uploads/2016/03/Amazon-Echo-Dot.jpg",
                 image_04:"https://cnet4.cbsistatic.com/img/kT0py77IbTrhIYwNqwcBJgd0XZw=/770x433/2016/09/30/a157d124-8f22-4a29-bab4-252a968fbfa2/echo-dot-comparison-shots-1.jpg",
                 intro: "Echo Dot is a hands-free, voice-controlled device with a small built-in speaker—it can also connect to your speakers or headphones over Bluetooth or through a 3.5 mm audio cable to deliver stereo sound to the speakers you choose. Dot connects to the Alexa Voice Service to play music, make calls, send and receive messages, provide information, news, sports scores, weather, and more—instantly.",
                 site_link: "http://amzn.to/2wvkKWt",
                 price_before: "0",
                 price_after: "49.99",
                 youtube_link_01: "https://www.youtube.com/embed/hPXS7rC1PWo",
                 youtube_link_02: "https://www.youtube.com/embed/7Ms_FTVxNrk",
                 description: "Echo Dot can hear you from across the room, even while music is playing. When you want to use Echo Dot, just say the wake word “Alexa” and Dot responds instantly. If you have more than one Echo or Echo Dot, Alexa responds intelligently from the Echo you're closest to with ESP (Echo Spatial Perception).
                               Sleek and compact design makes Echo Dot a convenient addition to any room in the house. With its built-in speaker, you can place Dot in the bedroom and use it as a smart alarm clock that can also turn off your lights. Or use Dot in the kitchen to easily set timers and shop tens of millions of Amazon products using just your voice.",
                 description_01: "Echo Dot (2nd Generation) is a hands-free, voice-controlled device that uses Alexa to play music, control smart home devices, make calls, send and receive messages, provide information, read the news, set alarms, read audiobooks from Audible, control Amazon Video on Fire TV, and more",
                 description_02: "Connects to speakers or headphones through Bluetooth or 3.5 mm stereo cable to play music from Amazon Music, Spotify, Pandora, iHeartRadio, and TuneIn. Play music simultaneously across Echo devices and speakers connected via cable with multi-room music (Spotify and Sirius XM support coming soon, Bluetooth not supported).",
                 description_03: "Introducing Alexa calling and messaging, a new way to be together with family and friends. Just ask Alexa to call or message anyone with an Echo, Echo Dot, or the Alexa App.",
                 description_04: "Controls lights, fans, TVs, switches, thermostats, garage doors, sprinklers, locks, and more with compatible connected devices from WeMo, Philips Hue, Sony, Samsung SmartThings, Nest, and others",
                 description_05: "Hears you from across the room with 7 far-field microphones for hands-free control, even in noisy environments or while playing music")

#3                 
Ecommerce.create(user_id: 1,
                 category_id: 1,
                 pcategory_id: 2,
                 title: "Tile Mate",
                 image_main: "http://i1128.photobucket.com/albums/m488/onesmileymonkey/Blog/Blog/IMG_1301_zpsuwxwtabp.jpg", 
                 image_01:"https://www.frugalcouponliving.com/wp-content/uploads/2017/02/tile-mate.jpg",
                 image_02:"http://digitalspyuk.cdnds.net/16/41/980x490/landscape-1476197985-tile.png",
                 image_03:"https://www.verizon.com/home/accessories/media/images-accessories/vzw/tile-tilemate-bluetooth-tracker-4-pack-c-tilemate4pk.png",
                 image_04:"http://www.citizentekk.com/wp-content/uploads/2017/05/Tile-Slim-Mens-Wallet.png",
                 intro: "Never Lose Your Keys, Phone, Or Anything Again. Tile Mate has a convenient hole, perfect for attaching to your keys, purse, backpack and more. Now, you can easily find all your important things.",
                 site_link: "http://amzn.to/2xQl6a8",
                 price_before: "24.99",
                 price_after: "20.25",
                 youtube_link_01: "https://www.youtube.com/embed/dxyajtakhPg",
                 youtube_link_02: "https://www.youtube.com/embed/gG5WTcgzPv4",
                 description: "Tile Mate is the easiest, quickest and most reliable way to find your phone, keys — anything! With over 5 million Tile devices sold, the Tile community is the world’s largest lost and found network.",      
                 description_01: "The world’s best-selling Bluetooth tracker just got 25% smaller. Tile Mate easily loops onto keychains or attaches to anything you don’t want to lose so you can find it fast.",
                 description_02: "Ring your things.Use your smartphone to make your Tile Mate ring when it’s nearby but out of sight.Ask others to help. Your Tile isn’t where you left it?  You can anonymously enlist help in the Tile community. With over 5 million Tile devices sold, it is the world’s largest lost and found network.",
                 description_03: "Find your phone. Can't find your phone? Simply double press the button on your Tile Mate to make your phone ring -even on silent!",
                 description_04: "See where you had it last. The easy-to-use, free Tile app remembers the last time and place it saw your Tile, so if you left it somewhere, you’ll always know where to look.",
                 description_05: "Battery life:One year from shipment: Charging:None All activity measurements and calculations are estimates. Accuracy is affected by various factors including physiology, location of device, and different movements.")

#4
Ecommerce.create(user_id: 1, 
                 category_id: 5,
                 pcategory_id: 2,
                 title: "UO Smart Beam Laser",
                 image_main: "https://awesomestuff365.com/wp-content/uploads/2017/05/UO-Smart-Beam-Mini-Portable-Projector-3.jpg", 
                 image_01:"https://awesomestuff365.com/wp-content/uploads/2017/05/UO-Smart-Beam-Mini-Portable-Projector-3.jpg",
                 image_02:"https://portablebuddy.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/u/o/uosmartbeamlaser_7.jpg",
                 image_03:"http://www.earlyadopter.co.kr/wp-content/uploads/2016/11/uo-smartbeam-laser-nx-bigbang-10th-anniversary-edition-projector-4.jpg",
                 image_04:"https://images-na.ssl-images-amazon.com/images/I/614-SbGxifL._SY400_.jpg",
                 intro: "This is the first and best laser projector which stay focused all the time so you can enjoy sharp vivid color images whenever and wherever you want.",
                 site_link: "http://amzn.to/2vOGvDj",
                 price_before: "435.00",
                 price_after: "345.00",
                 youtube_link_01: "https://www.youtube.com/embed/VJ5-6ycBX58",
                 youtube_link_02: "https://www.youtube.com/embed/o6UmcKlkdAk",
                 description: "UO Smart Beam Laser is world's One and Only FDA-Registered Class 1 Eye-safe Laser Projector and 2016 CES Innovative Product Award Winner. It's completely safe for human eye. Portable 2 inch cube projects up to 150 inch HD screen in complete dark area. Simply connect UO with Wi-Fi or cables to smartphone, tablet, laptop, pc, media player or any other devices to play video, audio, picture, presentation, etc. Use it on any surface at anytime and anywhere because it's portable Wi-Fi Wireless & FOCUS FREE!",      
                 description_01: "Variety Compatibility - UO Smart Beam Laser is compatible to use with variety devices using Wi-Fi or cables such as Android, iOS, smartphone, tablet, laptop, computer, game console, media player, action camera, etc.",
                 description_02: "Auto Focus with Eye Safe Laser - UO Smart Beam Laser is world's 1st and best laser portable projector with eye safe class 1 laser and it’s the only projector with FDA registration in the world. It’s auto focus projector because of laser technology.",
                 description_03: "Variety Applications - UO Smart Beam Laser is portable light weight wireless HD projector that you can carry it anytime, anywhere and project it on any surface. Use it as home theatre, outdoor camping, group meeting, business presentation, education and so on.",
                 description_04: "Until now, most projectors used either LED, LCD or DLP as the light source and they all possessed one bothersome problem: Focus needed to be adjusted manually. This was especially a big problem for portable projectors since they were meant to be carried around and the user had to adjust the focus every single time",
                 description_05: "The team behind the creation of UO Smart Beam Laser invented a highly-advanced laser technology that is completely safe to human eye. The Class 1 Laser used in the projector is registered with FDA. UO Smart Beam Laser's ingenious focus free and harmless laser technology has earned itself the 2016 CES Innovative Award")        
             
#5
Ecommerce.create(user_id: 1,
                 category_id: 2,
                 pcategory_id: 3,
                 title: "MiniPresso GR Espresso Maker",
                 image_main: "http://cdn.thefunnybeaver.com/wp-content/uploads/2017/05/MiniPresso-GR-Espresso-Maker-review-and-price-Featured.jpg", 
                 image_01:"https://images-na.ssl-images-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A2BK7LPF7A0UPQ/B00VTA9F6U/e89I6RzSRQGk._UX900_TTW_.jpg",
                 image_02:"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A2BK7LPF7A0UPQ/B00VTA9F6U/3SfwueQ4RVW._UX300_TTW__.jpg",
                 image_03:"https://m.media-amazon.com/images/S/aplus-seller-content-images-us-east-1/ATVPDKIKX0DER/A2BK7LPF7A0UPQ/B00VTA9F6U/uxwLYT6TNKQ._CR148,0,591,595_UX300_TTW__.jpg",
                 image_04:"https://ae01.alicdn.com/kf/HTB1.HBAMFXXXXcoXFXXq6xXFXXXA/china-WACACO-font-b-Minipresso-b-font-outdoor-font-b-portable-b-font-coffee-machine-manual.jpg",
                 intro: "With a Minipresso GR, you can pour high quality espresso anywhere on the go.  At under 1lb and 7inch long, it fits in your backpack, carry on luggage, glove box, or desk drawer. Pull amazing shots on your schedule, waking up or the craving just hits.",
                 site_link: "http://amzn.to/2ePbF6p",
                 price_before: "64.99",
                 price_after: "52.00",
                 youtube_link_01: "https://www.youtube.com/embed/vz69fpcZkuY",
                 youtube_link_02: "https://www.youtube.com/embed/4vqtEZQE7-I",
                 description: "We are taking espresso on the road, way beyond the confines of the cafe. Whether you sleep in a tent, a hotel bed, or at home, Minipress has you covered for your ritual morning cup. Forget the pot they call coffee in the office break room. Enjoy an espresso, or two, in the time it takes standing in line at the coffee shop, at a fraction of the cost.",      
                 description_01: "The Minipresso GR uses ground beans, and you need a source for hot water, a tea kettle for example. Be your own barista. ",
                 description_02: "The Minipresso is hand powered.There is no electric cord, and no batteries are required. Never find yourself out of power out of luck. I  want a shot and I want it now!",
                 description_03: "6 peices in all, including a scooper for measured extraction. Food grade plastic and BPA free. The GR model is for use with ground beans only, not coffee capsules.  ",
                 description_04: "Minipresso can make espresso anywhere.",
                 description_05: "Minipresso has a sleek modern design and intuitive operation,")                    
                 
#6
Ecommerce.create(user_id: 1, 
                 category_id: 1,
                 pcategory_id: 4,
                 title: "Collar Perfect",
                 image_main: "https://ksr-ugc.imgix.net/assets/004/960/314/a05920e59074547ee9a1d472a65ec838_original.jpg?w=700&fit=max&v=1448228813&auto=format&q=92&s=c12dd24c0e6c29ca947e59350b298476", 
                 image_01:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/collarperfectvideo._SR720,404_.jpg",
                 image_02:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/collarperfect2._SR300,300_.jpg",
                 image_03:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/collarperfect3._SR300,300_.jpg",
                 image_04:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/collarperfect4a.jpg",
                 intro: "Collar Perfect is a compact and quick ironing solution that works by clamping onto collars, cuffs, creases, between buttons, and other parts to smooth out wrinkles. What makes it Perfect is the ability to transform by opening to flatten the wings for use like a regular iron. Collar Perfect comes with five adjustable temperature settings and international power support to iron out all of life's wrinkles.",
                 site_link: "http://amzn.to/2wd4O9w",
                 price_before: "0",
                 price_after: "34.95",
                 youtube_link_01: "https://www.youtube.com/embed/0NfNc8FuyHw",
                 youtube_link_02: "https://www.youtube.com/embed/zV_C4vwkjTU",
                 description: "",      
                 description_01: "Perfect for Quick Touch Ups and Hard to Reach Places - The unique design allows for quick and easy touch ups along pesky shirt collars, between buttons, along pant creases, and other hard to reach areas.",
                 description_02: "Convertible Wings are Perfect for Detailed Ironing - The convertible wings rotate for traditional ironing on the fly for when you need more than a quick touch up.",
                 description_03: "Adjustable Heat Settings - Six adjustable heat settings perfect for any fabric.",
                 description_04: "Powered for Travel - Built in support for either 110v or 220v requirements.",
                 description_05: "Rotating Power Cord - Rotating Power Cord perfect to provide improved user ability in detailing and ironing needs.")  

#7
Ecommerce.create(user_id: 1, 
                 category_id: 3,
                 pcategory_id: 5,
                 title: "Cozmo",
                 image_main: "https://i.ytimg.com/vi/k_hvLYxxaNg/maxresdefault.jpg", 
                 image_01:"https://cdn.vox-cdn.com/thumbor/WpBfiuZjjcj2X0EzaXdtJPeschM=/40x0:1390x900/1200x800/filters:focal(40x0:1390x900)/cdn.vox-cdn.com/uploads/chorus_image/image/49959931/anki-cozmo-04_1600.0.0.jpg",
                 image_02:"https://s.aolcdn.com/hss/storage/midas/69be669b7fd70fa1eafb0efa73bdda36/204617745/1121_cozmo.jpg",
                 image_03:"https://timedotcom.files.wordpress.com/2016/10/cozmo-gif.gif?w=560",
                 image_04:"https://68.media.tumblr.com/59d5aa4a85734fa3628122677ef639f8/tumblr_ofcnbhkcqp1vnq1cro1_400.gif",
                 intro: "Only the coolest robot ever invented. Say Hello to cozmo, a gifted little guy who's got a mind of his own and a few tricks up his sleeve. He's the sweet spot where supercomputer meets loyal sidekick. He's curiously smart, a little mischievous, and unlike anything ever created. You see, cozmo is a real-life robot like you've only seen in movies, with a one-of-a-kind personality that evolves the more you hang out. He'll nudge you to play and keep you constantly surprised. More than a companion, cozmo's a collaborator. He's your accomplice in a crazy amount of fun. Some robots just have it all.",
                 site_link: "http://amzn.to/2gOLD3J",
                 price_before: "0",
                 price_after: "179.99",
                 youtube_link_01: "https://www.youtube.com/embed/eBp10ylItlw",
                 youtube_link_02: "https://www.youtube.com/embed/IrrCUoMi0sM",
                 description: "",      
                 description_01: "Adorably personable - He’s a supercomputer and loyal sidekick all at once. Thanks to artificial intelligence, Cozmo can express hundreds of emotions. From curious to clever, persistent to playful, he has personality x 10. He knows your name, face, and quirks. And best of all, he continues to evolve the more you hang out.",
                 description_02: "Super-powered smarts - Cozmo is made of 300+ parts that create one super smart, super entertaining robot. He doesn’t just move; he gets curious and explores. He doesn’t just learn; he plots and plans. He doesn’t just see you; he gets to know you. Want to see Cozmo do something totally new? Use the Cozmo Software Developers Kit (SDK) to program new interactions.",
                 description_03: "Always game - Cozmo is a game-playing machine. Literally. Whether lifting his Power Cubes or challenging you to games like Quick Tap and Keepaway, he’s always up for action. And in Explorer Mode, Cozmo lets you guide him through his environment to see what he sees — day or night. Cozmo’s skills and games are constantly updating, so the fun never runs out.",
                 description_04: "Ready to roll - Drop-tested and built to last, Cozmo is tougher than he looks (even when it comes to your pup). Things like safety and data security have also been rigorously tested. With no parts to put together, he’s ready to go right out of the box. Requires a compatible iOS or Android device and the free Cozmo app.",
                 description_05: "WARNING: CHOKING HAZARD -- Small parts. Not for children under 3 yrs.")                

#8
Ecommerce.create(user_id: 1, 
                 category_id: 2,
                 pcategory_id: 2,
                 title: "3Doodler",
                 image_main: "https://img.michaels.com/L6/3/IOGLO/883302169/219949701/10496249_3.jpg?fit=inside|540:540", 
                 image_01:"http://3dtool.ru/wp-content/uploads/2015/07/3doodler_2_description_2.jpg",
                 image_02:"http://gadgetviper.com/blog/wp-content/uploads/2015/05/3doodler-2-0-price-2.jpg",
                 image_03:"https://media.boingboing.net/wp-content/uploads/2015/07/vQQBYO.gif",
                 image_04:"https://s-media-cache-ak0.pinimg.com/originals/41/a4/4d/41a44d1f6328c781830bbc8b76d654c1.gif",
                 intro: "The 3Doodler Create is the latest generation of the world’s best selling 3D printing pen. Replacing the 3Doodler 2.0, the new 3Doodler Create incorporates 100s of refinements, for smoother, faster, and more reliable Doodling in 3D. Now branded as 3Doodler Create to capture the amazing versatility of the world’s leading 3D printing device, the Create is perfect for fine art, DIY, maker projects, creating scale models and decorative items.",
                 site_link: "http://amzn.to/2jc0xSu",
                 price_before: "99.99 ",
                 price_after: "84.95",
                 youtube_link_01: "https://www.youtube.com/embed/emUlHFWcHck",
                 youtube_link_02: "https://www.youtube.com/embed/XiGnoo0pgnk",
                 description: "",      
                 description_01: "WORLD’S FIRST AND NO. 1 BEST SELLING 3D PEN: 3Doodler Create is the newest model from the maker of the world's first 3D printing pen. The slimmest, lightest, strongest 3Doodler yet. Enhanced design, easy to manage, and improved drive system for quieter and smoother operation, and endless creation. Latest features also include simplified and intuitive controls, and a new ambient light bar.",
                 description_02: "DOODLE IN 3D: Draw vertically. Draw horizontally. Lift your imagination off the page! The 3Doodler Create extrudes heated plastic, which instantly hardens, allowing you to literally draw in 3D, freehand or on paper. Change colors quickly and easily. The possibilities are endless.",
                 description_03: "3D ART MADE EASY FOR ALL ADULTS: From hobbyists to crafters, artists and professionals, 3D creation has never been easier. It's the perfect gift for all men and women. Precision crafting and art is easier than ever with the ultimate 3D craft pen.",
                 description_04: "MOST VERSATILE 3D PEN: 3Doodler offers the widest range of plastics, no mess, safe and non-toxic. It's the only 3D Art tool with changeable nozzles and unique accessories. Plus, you'll find hundreds of FREE 3Doodler stencils available online for family friendly inspiration. Draw in 3D for hours!",
                 description_05: "NO RISK PURCHASE, COMPLETE 3D SET: 360 days FREE replacement policy and unrivaled 24-hour global customer service. THE BOX INCLUDES: 3Doodler Create 3D Pen, 50 FREE Plastic Strands in a selection of multiple colors and materials, Power Adapter, Quick Start Guide, Tools & a ton of creative potential! Please refer the User Manual before use.") 

#9
Ecommerce.create(user_id: 1, 
                 category_id: 3,
                 pcategory_id: 2,
                 title: "Myo Gesture Control Armband (Black)",
                 image_main: "http://www.idgconnect.com/IMG/293/30293/myo.jpg", 
                 image_01:"https://i.ytimg.com/vi/lvoWHyZPc1c/maxresdefault.jpg",
                 image_02:"http://static4.businessinsider.com/image/53a8718e6bb3f7df2ecda5e3-1200-522/myo-on-arm.jpg",
                 image_03:"https://i.ytimg.com/vi/te1RBQQlHz4/maxresdefault.jpg",
                 image_04:"https://static.businessinsider.com/image/53a8732decad045e249abc74/image.jpg",
                 intro: "The Myo gesture control armband reads the muscle activity in your forearm and gives you touch-free control of technology with hand gestures and motion. ",
                 site_link: "http://amzn.to/2f2AFqX",
                 price_before: "0",
                 price_after: "199.99",
                 youtube_link_01: "https://www.youtube.com/embed/te1RBQQlHz4",
                 youtube_link_02: "https://www.youtube.com/embed/oWu9TFJjHaM",
                 description: "The Myo armband uses exclusive gesture-based movements that are intuitive and easy to master. They’re based on five distinct hand gestures combined with motion. You’ll also feel when Myo is in sync with you through haptic feedback (with short, medium and long vibrations).
                               The armband is a lightweight and unobtrusive device (it weighs less than the average wristwatch) and includes a built-in rechargeable battery that offers all-day use.",      
                 description_01: "Present - Blow your audience away with exclusive presentation features: control a digital pointer and zoom in on your slides, touch-free.",
                 description_02: "Connect - Step away from your computer and control your digital world with gestures: browse the web, play videos, switch between applications, and more.",
                 description_03: "Play - Fly your Parrot Drone or drive your Sphero to take your radio control experience to the next level.",
                 description_04: "With over 100 applications in Myo Market, the Myo armband gives you control of technology from a distance, from games and connected things to presentations and media. Using Keyboard Mapper, bring your favorite applications to life by mapping gestures to your keyboard for customized contro",
                 description_05: "Works with Mac, Windows, iOS, and Android devices through a wireless connection.")  

#10                 
Ecommerce.create(user_id: 1, 
                 category_id: 2,
                 pcategory_id: 4,
                 title: "Back to the Roots Water Garden",
                 image_main: "https://gadgetflowcdn.com/wp-content/uploads/2015/12/Back-to-the-Roots-Water-Garden-and-Fish-Tank-02.jpg", 
                 image_01:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/watergarde4b._SR300,300_.jpg",
                 image_02:"https://images-na.ssl-images-amazon.com/images/G/01/vince/boost/detailpages/watergarde4c._SR300,300_.jpg",
                 image_03:"http://cdn2.bigcommerce.com/n-nr1m3w/d197j/product_images/uploaded_images/hometestimonial1.jpg?t=1428618454",
                 image_04:"http://dingo.care2.com/pictures/greenliving/uploads/2015/02/BacktotheRootsNA-450.jpg",
                 intro: "Meet our new Water Garden — it's a self-cleaning fish tank that grows organic sprouts and herbs on top. We're bringing a full ecosystem right into your home.",
                 site_link: "http://amzn.to/2w4H642",
                 price_before: "99.99",
                 price_after: "96.99",
                 youtube_link_01: "https://www.youtube.com/embed/Kd4cy7UEWLU",
                 youtube_link_02: "https://www.youtube.com/embed/QvbxLyRhtrA",
                 description: "What is an aquaponic Water Garden? It's a closed-looped ecosystem powered by aquaculture (fish farming) and hydroponics (growing plants in nutrient rich water). The cycle: fish release nutrient-rich waste into the water, the plants eat the nutrients as food at the same time filtering the water to go back down to your fish.",      
                 description_01: "Comes with everything you need! - The water garden includes organic seeds, growstones, natural fertilizer, a coupon for a betta fish, fish food and a silent water pump",
                 description_02: "Beautifully re-designed. - Features custom Grow Pods for easy planting and harvesting of herbs — now with 2x the growing space. Manufactured in the USA.",
                 description_03: "It's fun for all ages! - Tag a photo of your #WaterGarden on Instagram or Facebook, and you could win one for a classroom of your choice through our #GrowOneGiveOne monthly giveaway.",
                 description_04: "Self-cleaning 3-gallon fish tank that also grows organic sprouts and herbs!",
                 description_05: "Includes a free interactive aquaponics curriculum!")   

#11                 
Ecommerce.create(user_id: 1, 
                 category_id: 3,
                 pcategory_id: 5,
                 title: "Pawbo Life Wi-Fi Pet Camera ",
                 image_main: "https://mycuddlybuddy.com/wp-content/uploads/2017/07/pt3.png", 
                 image_01:"data:image/jpeg;base64,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",
                 image_02:"https://images-na.ssl-images-amazon.com/images/I/81COLXYmR0L.jpg",
                 image_03:"https://images-na.ssl-images-amazon.com/images/I/71q8aTHMfpL.jpg",
                 image_04:"http://yourhomesecuritywatch.com/wp-content/uploads/2016/06/Pawbo-app-actually-has-function-that-allows-me-to-directly-post-my-pictures-to-my-social-outlet-like-Facebook-Twitter-.jpg",
                 intro: "Pawbo Life - A smart pet camera brings you close to your pet!",
                 site_link: "http://amzn.to/2yjunrH",
                 price_before: "199.00",
                 price_after: "149.00",
                 youtube_link_01: "https://www.youtube.com/embed/0ce1dR-BWvg",
                 youtube_link_02: "https://www.youtube.com/embed/GkMpx0wYSZo",
                 description: "These days staying connected through gadgets is the obvious. Now is the time we stayed connected to our pets. The only true love these days. Listen and respond appropriately. Be on the go, most! Be right here, almost! Pawbo Life brings you close. A true multiple entertaining app, bonding you and your pets to a whole another level.",      
                 description_01: "Play & interact with your pets anytime, anywhere! - Pets left alone can become lonely. With Pawbo life, you can See/Talk/Treat/Play with your furry friends while you are away from home. Pawbo Life brings more fun and quality time to you and your pets.",
                 description_02: "Pawbo Life app: control multiple Pawbo Life cameras with one application. Concurrent users: support up to 8 users online simultaneously. Accessories connection: remotely operate Pawbo Theme Park accessories.",
                 description_03: "Pawbo Life camera (PPC-21CL) w/ 720p HD live video, 130° wide-angle lens, and 4x digital room, capture and record every precious moments from your mobile device.",
                 description_04: "Built-in microphone/speaker/laser/treat dispenser let you listen, talk and reward your pet's favorite snack or play & interact with your pet anytime, anywhere.",
                 description_05: "Easy set up Pawbo Life app: support iOS 8 or later (iPhone, iPad and iPod) and Android 4.0.3 or later version. Wi-Fi environment required 802.11b/g/n(2.4GHz) connectivity with WPA2-AES encryption. Pawbo support team via service.usa pawbo.com") 

#12                 
Ecommerce.create(user_id: 1, 
                 category_id: 3,
                 pcategory_id: 5,
                 title: "Furbo Dog Camera",
                 image_main: "http://bpc.h-cdn.co/assets/16/51/1482345486-furbo-dog-camera-review.jpg", 
                 image_01:"https://cdn.shopify.com/s/files/1/1362/5949/articles/Furbo_Image-0697_1000x.jpg?v=1497972845",
                 image_02:"https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_limit,w_620/v1462476135/Furbo-Dog-Cam-App_yjohjj.jpg",
                 image_03:"https://i.ytimg.com/vi/KH5hgJFAAL4/maxresdefault.jpg",
                 image_04:"https://i.kinja-img.com/gawker-media/image/upload/t_original/lpbfigxvlrb5d2bjex94.jpg",
                 intro: "A smart dog camera that lets you see, talk and TOSS TREATS to your dog!",
                 site_link: "http://amzn.to/2jFSRIv",
                 price_before: "249.00",
                 price_after: "199.00",
                 youtube_link_01: "https://www.youtube.com/embed/IFsFsO_nOjs",
                 youtube_link_02: "https://www.youtube.com/embed/TjOwycbkJDM",
                 description: "Never Miss A Moment of Your Dog’s Day
                               Ever wonder what your dog does all day? 
                               Furbo is a smart dog camera with a connected app that lets you see, talk, and toss treats to your dog when you're not home.",      
                 description_01: "Fun TREAT TOSSING: TOSS a treat to your dogs via the free Furbo iOS/Android app. Fill it with your dogs’ favorite treats & play a game of catch.",
                 description_02: "Full HD Camera & Night Vision: livestream video to monitor your pet with a wide-angle view, day and night.",
                 description_03: "2-Way Chat & BARKING ALERT: Furbo’s BARKING SENSOR is MADE FOR DOGS. It sends push notifications to your smartphone when it detects barking. Know what’s going on at home and talk to calm them down via the app.",
                 description_04: "Easy 3-Step Setup: 1) plug in to a power outlet using its USB cord 2) download the Furbo app 3) connect to your home wifi.",
                 description_05: "Stable internet connection & Wifi signal are recommended for best performance.")                  

#13                 
Ecommerce.create(user_id: 1, 
                 category_id: 1,
                 pcategory_id: 3,
                 title: "LuminAID - PackLite Max USB Solar Inflatable Waterproof Lantern",
                 image_main: "https://ksr-ugc.imgix.net/assets/015/387/911/f819c77207d6438c5a889dfd26428f93_original.jpg?crop=faces&w=1552&h=873&fit=crop&v=1488493056&auto=format&q=92&s=ff9a8256fb7fd13200a873cca5592cbb", 
                 image_01:"http://cdn.shopify.com/s/files/1/0949/3484/products/LuminAID-PackLite-Nova-solar-inflatable-lantern-tent-lake-louise_SQUARE_2_600x_6220d7f0-d455-4732-b874-d4f1000dca04_grande.jpg?v=1490666325",
                 image_02:"https://theepicenter-4977.kxcdn.com/media/catalog/product/cache/1/image/500x/040ec09b1e35df139433887a97daa66f/l/u/luminaid-packlite-nova.jpg",
                 image_03:"https://i.ytimg.com/vi/9eurIeN3Hxk/maxresdefault.jpg",
                 image_04:"https://cdn1.backdoorsurvival.com/wp-content/uploads/2017/07/13165857/packlite-crawlspace.jpg",
                 intro: "Different Ways to Use Your LuminAID Max USB",
                 site_link: "http://amzn.to/2fvnlIw",
                 price_before: "0",
                 price_after: "42.42",
                 youtube_link_01: "https://www.youtube.com/embed/ZQxlFvpNCno",
                 youtube_link_02: "https://www.youtube.com/embed/qXaOCV3_muA",
                 description: "Say goodbye to bulky camping lanterns and tuck a compact Max USB in your pack on your next adventure. This small but powerful light packs down to only 6 inch x 6 inch x 1 inch and weighs 8.4 ounces. Made with durable TPU plastic this solar light is up to any conditions.",      
                 description_01: "EXTRA BRIGHT LED LANTERN - Lightweight, inflatable, waterproof, and portable, yet provides over 150 lumens of LED light. Perfect for indoor or outdoor lighting. Makes a great gift for anyone in the family and can be used for camping, hiking, emergency preparedness, garden/patio parties, picnics, and fun in the pool.",
                 description_02: "LONG BATTERY LIFE - Provides approximately 50 hours of light on Low mode when battery is fully charged, making this solar lantern great for camping, outdoor recreation, and emergencies. Completely powered by the sun so no additional batteries are necessary. Choose from 5 brightness settings depending on the hours of light and brightness needed.",
                 description_03: "TWO WAYS TO RECHARGE (SOLAR & USB) - Recharges in 12-14 hours of direct outdoor sunlight (approximately 2-3 days depending on location and time of year) or 1-2 hours by USB (cord included).",
                 description_04: "VERSATILE - Lightweight and collapsible makes this easy to take or store anywhere. Use the convenient carrying handle to daisy chain or caribiner to a backpack while hiking. Inflates to 6 inch cube and packs down to 1 inch in depth. The PackLite Max USB never heats up so it's completely safe to use in tents, sleeping bags, and with kids.",
                 description_05: "WATERPROOF, SHATTERPROOF, and DURABLE - Made from heavy duty, rugged TPU to endure tough environments. It is 100% waterproof (IP67) and dustproof.")   