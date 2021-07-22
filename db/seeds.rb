# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
travel = Category.create(
    name: "Travel"
)
food = Category.create(
    name: "Food"
)
bikes = Category.create(
    name: "Bikes"
)
movies = Category.create(
    name: "Movies"
)

buenos_aires = Post.create(
    title: "My days on Buenos Aires",
    contents: "Three days in Buenos Aires are best enjoyed on foot. Pick a neighborhood and walk it; savor 
    its restaurants and cafes, admire its architecture and absorb its atmosphere. Each area has something 
    special to offer.  Here are some of the most interesting neighborhoods to visit.",
    category: travel,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626788943/warm%20up/buenosaires_o5jqta.jpg"
)
bariloche = Post.create(
    title: "Vacaciones en Bariloche",
    contents: "A veces, las expectativas quedan ampliamente superadas por la realidad. Bendita realidad llena 
    de lagos y montañas nevadas hasta donde alcanza la vista, increíbles carreteras panorámicas y miradores que 
    te dejan sin aliento. Bariloche fue mucho más de lo esperado en todos los sentidos. Un destino que, bajo 
    ninguna circunstancia, puede faltar dentro de una ruta por La Patagonia argentina.",
    category: travel,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626789428/warm%20up/bariloche_pqvjaa.jpg"
)
colonia = Post.create(
    title: "Fin de semana en Colonia!",
    contents: "Colonia del Sacramento, más conocida simplemente como Colonia, es una bonita ciudad Uruguaya 
    ubicada a los pies del Río de la Plata. A continuación te dejo mi itinerario para visitar Colonia del 
    Sacramento en 2 días: Casco histórico de la ciudad, puerto de yates, paseo de San Gabriel, Plaza mayor,
    Faro de Colonia de Sacramento, Bastión de San Miguel, Calle de los suspiros, basílica del Santísimo 
    Sacramento, tiendas de artesanía, autos antiguos",
    category: travel,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626790048/warm%20up/colonia_frcd1g.jpg"
)
bohio = Post.create(
    title: "Restaurante Bohío",
    contents: "El Restaurante El Bohío consta de una estrella Michelin, y está situado en Illescas, un pueblo 
    de la provincia de Toledo a tan solo 35 kms de esta gran ciudad. El Restaurante El Bohío se fundó en 1934 y 
    es la excusa perfecta para realizar un visita a esta antigua ciudad manchega y por supuesto, pasar un 
    momento sublime en el Restaurante de Pepe Rodríguez.",
    category: food,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626790971/warm%20up/bohio_ds24bu.jpg"
)
dionisos = Post.create(
    title: "Comida griega en España",
    contents: "En uno de nuestros viajes a Barcelona estuvimos en un restaurante griego para probar la cocina 
    griega y la verdad nos encanto este tipo de comida. La comida griega es muy diferente a la nuestra, pero en 
    su esencia y base suele utilizar elementos y/o productos mediterráneos. Además, lo que nos sorprendió fue 
    disfrutar de esta experiencia y del auténtico sabor de la gastronomía griega en la capital barcelonesa.",
    category: food,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626791474/warm%20up/dioniso_edvc2t.jpg"
)
rouser = Post.create(
    title: "Bajaj Rouser ns 200",
    contents: "Estamos frente a una moto Street estilo naked, que permite, mediante la remoción del corta spray 
    trasero, dejarla aún más deportiva, dejando a la vista casi todo el neumático trasero, que en combinación 
    con el colín alto y el porta patentes en aluminio trabajado, le dan ese aspecto bien racing.",
    category: bikes,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626792258/warm%20up/rousy_utwi7t.jpg"
)
yamahar6 = Post.create(
    title: "Yamaha R6",
    contents: "The breath-taking chassis outshines a rather breathless motor, but there are many positives. 
    The updated looks stunning while the front end and brakes help make this a truly brilliant-handling 
    middleweight. However, it’s an expensive 600, especially for one with reduced peak power due to Euro4 
    constraints. Despite this restrained nature, the R6 remains - after 20 years of production - in a class of 
    one, being the only supersport currently updated for Euro4 regulations.",
    category: bikes,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626792737/warm%20up/yamaha-yzf-r6-2017-1_o7elav.jpg"
)
metropolis = Post.create(
    title: "Metrópolis",
    contents: "Cualquier intento por hablar de Metrópolis (Fritz Lang, 1927), saca a la luz el debate sobre las 
    clasificaciones estilísticas, las etiquetas, la relatividad conceptual, el encorsetamiento rígido, inútil y 
    estéril de todo análisis. Desde un enfoque objetivo, los valores plásticos e innovadores de Metrópolis la 
    han convertido, junto a El gabinete del doctor Caligari (Robert Wiene, 1919) y Nosferatu (Murnau, 1922), en 
    obra cumbre del llamado expresionismo alemán.",
    category: movies,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626793523/warm%20up/metropolis-alemania_yv790p.jpg"
)
tiempos_modernos = Post.create(
    title: "Tiempos modernos",
    contents: "El cine sonoro estaba ya plenamente integrado y Charlot se iba despidiendo (en esta película el 
    personaje incluso canta y hay variados efectos de sonido).
    Al mismo tiempo los USA estaban sumidos en la terrible Depresión y Chaplin utilizó su mejor arma (el humor) 
    y su libertad como creador (obtenida gracias a su inmensa fama y rentabilidad) para realizar un alegato 
    contra la pobreza y el orden injusto que impone un capitalismo feroz.",
    category: movies,
    image: "https://res.cloudinary.com/agusgcloud/image/upload/v1626794023/warm%20up/tiempos-modernos-1-scaled-1_uxq8vl.jpg"
)