# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing bookings..."
Booking.destroy_all

puts "Clearing courses..."
Course.destroy_all

puts "Clearing users..."
User.destroy_all

user1 = User.create!(email: "zzz@gmail.com", password: "123123", name: "Rayz")
puts "Creating user1..."
user2 = User.create!(email: "yzyz@gmail.com", password: "321321", name: "Amy")
puts "Creating user2..."
user3 = User.create!(email: "wwyy@gmail.com", password: "123321", name: "Ruben")
puts "Creating user3..."


course1 = Course.create!(
  user: user1,
  title: "Telekinesis",
  description: "Unlock the power of your mind to manipulate objects without physical contact. Learn how to control and move items with precision and focus.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Telekinesis
    - **Introduction to Telekinesis**
      - Understanding the science and psychology behind telekinesis.
      - Basic meditation techniques to improve focus.

    - **Lifting and Moving Objects**
      - Practicing with small, lightweight items.
      - Increasing range and power for larger objects.
      - Techniques for fine motor control.

    - **Defensive and Offensive Applications**
      - Creating barriers using nearby objects.
      - Redirecting incoming threats with telekinesis.

    - **Advanced Techniques**
      - Simultaneously controlling multiple objects.
      - Using telekinesis in combination with other powers.
      - Overcoming mental fatigue and enhancing endurance.
  SYLLABUS
  price: 1400,
  level: 3,
  category: 2,
  duration: 120,
  location: "Shibuya, Tokyo",
  start_time: Time.now + 1.week,
  online: false,
)

course2 = Course.create!(
  user: user2,
  title: "Shape-Shifting",
  description: "Master the ability to alter your appearance and transform into any creature or object. Explore the potential of limitless transformations.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Shape-Shifting
    - **Understanding Shape-Shifting**
      - The biology and mechanics of transformation.
      - Safeguarding your original form.

    - **Basic Transformations**
      - Changing small features (e.g., hair color, height).
      - Morphing into everyday objects and animals.

    - **Advanced Transformations**
      - Full-body transformations into mythical creatures.
      - Retaining control and awareness during complex changes.

    - **Practical Applications**
      - Using transformations for stealth and disguise.
      - Enhancing physical abilities (e.g., speed, strength) through shape-shifting.
      - Combining shape-shifting with other abilities for unique effects.
  SYLLABUS
  price: 1600,
  level: 1,
  category: 1,
  duration: 90,
  location: "Meguto, Tokyo",
  start_time: Time.now + 2.weeks,
  online: true,
)

course3 = Course.create!(
  user: user3,
  title: "Imaginary Constructs",
  description: "Turn your imagination into reality by learning to create tangible objects and tools using pure thought. Build anything from simple tools to complex machinery.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Imaginary Constructs
    - **Foundations of Constructs**
      - Harnessing creative energy and visualization techniques.
      - Understanding the durability and stability of constructs.

    - **Basic Object Creation**
      - Forming simple tools (e.g., hammers, ropes).
      - Maintaining focus to ensure construct stability.

    - **Advanced Constructs**
      - Building dynamic objects (e.g., vehicles, automated tools).
      - Enhancing constructs with functional properties (e.g., sharpness, flexibility).

    - **Applications and Ethics**
      - Using constructs for problem-solving and emergencies.
      - Ethical considerations in creating objects that mimic real-world items.
      - Combining constructs with other superpowers for maximum impact.
  SYLLABUS
  price: 2000,
  level: 0,
  category: 2,
  duration: 60,
  location: "Setagaya, Tokyo",
  start_time: Time.now + 3.weeks,
  online: false,
)

course4 = Course.create!(
  user: user1,
  title: "Flying",
  description: "Master the art of flight with this comprehensive course. Learn to control altitude, speed, and navigation as you soar through the skies.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Flying
    - **Introduction to Aerodynamics**
      - Understanding the physics of flight.
      - The importance of balance and posture in the air.

    - **Flight Fundamentals**
      - How to lift off safely.
      - Maintaining altitude and stability.
      - Controlled landings and safety tips.

    - **Advanced Maneuvers**
      - Increasing speed without losing control.
      - Navigating through obstacles and bad weather.
      - Performing aerial stunts and tricks.

    - **Real-World Applications**
      - Flight etiquette in urban and rural areas.
      - Rescue operations and delivering goods.
      - Combining flight with other superpowers for enhanced effectiveness.
  SYLLABUS
  price: 1000,
  level: 0,
  category: 0,
  duration: 90,
  location: "Hachioji, Tokyo",
  start_time: Time.now + 1.week,
  online: true,
)

course5 = Course.create!(
  user: user2,
  title: "Super Strength",
  description: "Develop incredible physical power to lift, smash, and protect with unparalleled strength.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Super Strength
    - **Strength Basics**
      - Understanding your limits and safety precautions.
      - Exercises to enhance strength and endurance.

    - **Applying Force**
      - Proper techniques for lifting heavy objects.
      - Using strength strategically in problem-solving.

    - **Combat Training**
      - Self-defense with super strength.
      - How to fight without causing unnecessary destruction.

    - **Community Use**
      - Assisting in natural disasters and emergencies.
      - Ethical considerations for using super strength in daily life.
  SYLLABUS
  price: 1200,
  level: 3,
  duration: 60,
  location: "Kawasaki, Kanagawa",
  start_time: Time.now + 2.weeks,
  online: false,
)

course6 = Course.create!(
  user: user3,
  title: "Invisibility",
  description: "Learn to vanish from sight and move undetected in this stealth mastery course.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Invisibility
    - **Harnessing the Power of Invisibility**
      - Activating invisibility and maintaining focus.
      - Understanding the limitations of your invisibility field.

    - **Stealth Techniques**
      - Moving quietly while invisible.
      - Strategies for avoiding detection by advanced technology.

    - **Ethical Use**
      - Privacy laws and respect for others.
      - Avoiding misuse of invisibility in personal and professional settings.

    - **Practical Scenarios**
      - Escaping tight situations.
      - Invisibility in teamwork and espionage.
      - Combining invisibility with other powers like flying or super strength.
  SYLLABUS
  price: 1500,
  level: 0,
  category: 2,
  duration: 60,
  location: "Yokohama, Kanagawa",
  start_time: Time.now + 3.weeks,
  online: true,
)

course7 = Course.create!(
  user: user1,
  title: "Healing Factor",
  description: "Learn how to harness your body's regenerative abilities to recover from injuries and illnesses faster than ever before.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Healing Factor
    - **Introduction to Healing Factor**
      - Understanding cellular regeneration and DNA repair mechanisms.
      - The limits and ethical use of rapid healing.

    - **Basic Healing Techniques**
      - Activating self-repair for minor cuts and bruises.
      - Enhancing recovery from fatigue and sickness.

    - **Advanced Regeneration**
      - Healing broken bones and internal injuries.
      - Techniques for resisting toxins and diseases.

    - **Applications and Challenges**
      - Balancing healing with physical exertion.
      - Using your healing factor to aid others.
      - Overcoming mental barriers to accelerated recovery.
  SYLLABUS
  price: 1500,
  level: 3, # Intermediate
  category: 0,
  duration: 120,
  location: "Saitama City, Saitama",
  start_time: Time.now + 1.week,
  online: true,
)

course8 = Course.create!(
  user: user2,
  title: "Telepathy (Emotions and Communication)",
  description: "Master the art of reading and transmitting thoughts, feelings, and emotions to connect deeply with others and enhance communication.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Telepathy
    - **Foundations of Telepathy**
      - Understanding brainwaves and emotional frequencies.
      - The ethical use of telepathy.

    - **Emotional Reading**
      - Sensing and interpreting emotional states.
      - Techniques for empathy and emotional influence.

    - **Thought Communication**
      - Sending and receiving clear messages mentally.
      - Establishing telepathic links with multiple people.

    - **Advanced Techniques**
      - Shielding your mind from unwanted intrusion.
      - Combining telepathy with persuasion and negotiation skills.
      - Using telepathy in high-stress or emergency situations.
  SYLLABUS
  price: 1800,
  level: 2,
  category: 1,
  duration: 180,
  location: "Tokyo, Japan",
  start_time: Time.now + 2.weeks,
  online: false,
)

course9 = Course.create!(
  user: user3,
  title: "Portal Generation",
  description: "Learn how to bend space and create portals for instantaneous travel between distant locations.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Portal Generation
    - **Introduction to Portal Physics**
      - Understanding spatial folding and wormholes.
      - The energy requirements of portal creation.

    - **Creating Simple Portals**
      - Establishing short-range portals.
      - Techniques for maintaining portal stability.

    - **Long-Distance Portals**
      - Calculating safe exit points.
      - Advanced focus techniques for extended ranges.

    - **Practical Applications**
      - Using portals for combat and rescue operations.
      - Troubleshooting common portal errors.
      - Combining portals with other abilities for strategic advantage.
  SYLLABUS
  price: 2200,
  level: 2, # Advanced
  category: 1,
  duration: 180,
  location: "Sapporo, Hokkaido",
  start_time: Time.now + 3.weeks,
  online: true,
)

course10 = Course.create!(
  user: user3,
  title: "Tentacle Generation",
  description: "Unleash the power of growing and controlling tentacles from your limbs, granting enhanced strength, reach, and versatility.",
  syllabus: <<~SYLLABUS,
    ### Course Syllabus: Tentacle Generation
    - **Biology of Tentacle Growth**
      - Understanding how tentacles integrate with your limbs.
      - Maintaining control and flexibility during extension.

    - **Basic Tentacle Control**
      - Growing and retracting tentacles safely.
      - Using tentacles for climbing and grabbing objects.

    - **Combat and Defense**
      - Techniques for disarming opponents and creating barriers.
      - Enhancing physical strength with tentacles.

    - **Advanced Uses**
      - Synchronizing tentacle movements with other abilities.
      - Creative applications in problem-solving and exploration.
      - Overcoming challenges like fatigue and overgrowth.
  SYLLABUS
  price: 1700,
  level: 1, # Intermediate
  duration: 120,
  location: "Akihabara, Tokyo",
  start_time: Time.now + 1.week,
  online: false,
)

course1.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/telekinesis.png')),
  filename: 'telekinesis.png',
  content_type: 'image/png'
)

course2.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/shape_shifting.png')),
  filename: 'shape_shifting.png',
  content_type: 'image/png'
)

course3.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/imaginary_constructs.png')),
  filename: 'imaginary_constructs.png',
  content_type: 'image/png'
  )

course4.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/flying.png')),
  filename: 'flying.png',
  content_type: 'image/png'
  )

course5.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/super_strength.png')),
  filename: 'super_strength.png',
  content_type: 'image/png'
)

course6.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/invisibility.png')),
  filename: 'invisibility.png',
  content_type: 'image/png'
)

course7.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/healing_factor.png')),
  filename: 'healing_factor.png',
  content_type: 'image/png'
)

course8.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/telepathy.png')),
  filename: 'telepathy.png',
  content_type: 'image/png'
)

course9.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/portal_generation.png')),
  filename: 'portal_generation.png',
  content_type: 'image/png'
)

course10.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/tentacle_generation.png')),
  filename: 'tentacle_generation.png',
  content_type: 'image/png'
)


booking1 = Booking.create!(status: 2, user: user1, course: course1)
puts "Creating booking1..."
booking2 = Booking.create!(status: 2, user: user2, course: course2)
puts "Creating booking2..."
booking3 = Booking.create!(status: 0, user: user3, course: course3)
puts "Creating booking3..."
booking4 = Booking.create!(status: 1, user: user1, course: course4)
puts "Creating booking4..."
