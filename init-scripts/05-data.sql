-- ============================================
-- DONNÉES INITIALES - Schéma WITCHER
-- ============================================
-- Données de référence avec UUID fixes
-- ============================================

-- ============================================
-- CARACTÉRISTIQUES (19 entrées)
-- ============================================

INSERT INTO witcher.caracteristique (id_caracteristique, nom, code, description, type) VALUES
    ('00000000-0000-0000-0000-000000000001', 'Intelligence', 'INT', 'Permet de résoudre des énigmes, de réaliser des expériences scientifiques, de construire des raisonnements logiques…', 'Principale'),
    ('00000000-0000-0000-0000-000000000002', 'Réflexes', 'RÉF', 'Sert à combattre, esquiver et effectuer des actions nécessitant des réactions rapides et des gestes précis.', 'Principale'),
    ('00000000-0000-0000-0000-000000000003', 'Dextérité', 'DEX', 'Pour les attaques à distance et tout ce qui implique de faire appel à l''équilibre et à la coordination œil-main.', 'Principale'),
    ('00000000-0000-0000-0000-000000000004', 'Corps', 'COR', 'S''utilise lorsqu''il faut faire appel à la force brute, comme pour les bagarres ou les prouesses physiques. Le corps représente aussi l''endurance nécessaire pour résister aux maladies ou à la fatigue.', 'Principale'),
    ('00000000-0000-0000-0000-000000000005', 'Vitesse', 'VIT', 'Représente la vitesse de déplacement de votre personnage. Vous pouvez utiliser cette caractéristique pour semer les poursuivants ou calculer la distance parcourue dans un temps donné.', 'Principale'),
    ('00000000-0000-0000-0000-000000000006', 'Empathie', 'EMP', 'Pour gérer les affaires de cœur et les émotions. La séduction et la persuasion font appel à cette caractéristique.', 'Principale'),
    ('00000000-0000-0000-0000-000000000007', 'Technique', 'TECH', 'Pour utiliser des mécanismes ou créer des objets avec précision. La technique sert également à manier des machines de siège et à installer des pièges.', 'Principale'),
    ('00000000-0000-0000-0000-000000000008', 'Volonté', 'VOL', 'Sert à intimider, mais aussi à réaliser des tests magiques et de résistance mentale. La volonté dénote votre capacité à aller de l''avant et votre degré de maîtrise de la magie.', 'Principale'),
    ('00000000-0000-0000-0000-000000000009', 'Chance', 'CHA', 'La chance est une réserve de points que vous pouvez utiliser pour retourner les situations à votre avantage. Avant d''effectuer un jet de compétence (ou un jet de sauvegarde contre la mort), pendant votre tour ou en défense pendant le tour d''un adversaire, vous pouvez ajouter des points de chance. Vous bénéficiez de +1 par point ajouté, sachant que vous devez décider du montant dépensé avant de lancer les dés. Votre réserve de chance se reconstitue au début de chaque session de jeu.', 'Principale'),
    ('00000000-0000-0000-0000-000000000010', 'Vigueur', 'VIG', 'Votre valeur de Vigueur correspond au nombre de points de Chaos que vous pouvez canaliser sans vous blesser. Vous subissez des dégâts lorsque le coût d''endurance de tous les sorts que vous lancez pendant un round est supérieur à cette valeur.', 'Autre'),
    ('00000000-0000-0000-0000-000000000011', 'Étourdissement', 'ÉTOU', 'Pour savoir à quel point votre personnage peut résister aux coups avant de finir étourdi ou inconscient, il faut se reporter à sa valeur d''étourdissement. Lorsque vous devez effectuer un jet de sauvegarde d''étourdissement, vous devez obtenir un résultat inférieur à cette caractéristique ou être étourdi.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000012', 'Course', 'COU', 'Cette valeur correspond à votre vitesse quand vous courez à une allure raisonnable. En un tour, vous pouvez parcourir un nombre de mètres égal à votre valeur de course.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000013', 'Saut', 'SAUT', 'La valeur de Saut correspond au nombre de mètres que vous parcourez en sautant après avoir pris de l''élan.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000014', 'Points de santé', 'PS', 'La santé correspond au nombre de points de dégâts que vous pouvez subir avant de passer en état de mort imminente et de succomber à une hémorragie.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000015', 'Endurance', 'END', 'L''endurance représente l''énergie que vous pouvez dépenser lors d''un effort physique ou d''un acte magique avant de finir épuisé (elle représente également la difficulté à vous mettre K.O.). Lorsque vous n''avez plus de points d''endurance, vous êtes étourdi et vous ne pouvez rien faire à part vous remettre. Lorsque vous n''en avez plus, vous devenez épuisé et ne pouvez plus rien faire à part récupérer. Lorsque vous lancez un sort, que vous effectuez des actions supplémentaires en combat, que vous utilisez certaines capacités ou que vous subissez des dégâts non létaux, vous piochez aussi dans votre réserve d''endurance. En général, 1 minute d''effort intense ou 1 heure de travail répétitif fait perdre 2 points d''endurance. Quand vous effectuez une action Récupérer, vous regagnez un nombre de points d''endurance égal à votre valeur de récupération.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000016', 'Encombrement', 'ENC', 'Cette valeur reflète le poids que vous pouvez porter sans être ralentis. Dès que vous êtes encombré, vous diminuez de -1 vos valeurs de RÉF, DEX et VIT pour chaque tranche de 5 points au-dessus de votre valeur d''encombrement, avec un minimum de 1. Vous pouvez soulever au maximum 50 fois votre valeur de corps en kilogrammes.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000017', 'Récupération', 'RÉC', 'La récupération indique le nombre de points de santé que vous regagnez par jour de repos au calme dans un lit. Pour retrouver ces points de santé, quelqu''un doit d''abord réussir un jet de premiers soins ou de mains thérapeutiques sur vous.', 'Secondaire'),
    ('00000000-0000-0000-0000-000000000018', 'Pieds', 'Pieds', 'Cette caractéristique indique le nombre de dégâts non létaux que vous infligez avec un coup de pied.', 'Autre'),
    ('00000000-0000-0000-0000-000000000019', 'Poings', 'Poings', 'Cette caractéristique indique le nombre de dégâts non létaux que vous infligez avec un coup de poing.', 'Autre');

-- ============================================
-- COMPÉTENCES
-- ============================================

INSERT INTO witcher.competence (id_competence, nom, description, exclusive, specialisation, prerequis, step, type, id_caracteristique) VALUES
    ('10000000-0000-0000-0000-000000000001', 'Connaissance de la rue', 'Cette compétence ne concerne pas la géographie urbaine à proprement parler, mais plutôt le fonctionnement de cet environnement. Avec une base de 10 vous en savez suffisamment pour éviter les voyous et vous rendre dans les quartiers les plus sûrs de la ville. Avec une base de 13 vous pouvez en général déterminer quelle faction exerce son influence sur un quartier donné et expliquer la raison de cette domination. Avec une base de 16 vous pouvez récolter une quantité d''informations impressionnantes sur une zone rien qu'en l'observant, mais aussi identifier les personnalités importantes de la ville et leurs relations. Avec une base de 20 vous évaluez la situation en un clin d''œil. Vous en savez assez pour compter parmi les habitants.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000002', 'Connaissance des monstres', 'La somme d''information que vous possédez à propos des monstres. Avec une base de 10 vous êtes capable de différencier un nekker d''une goule. Avec une base de 13 vous savez classer les monstres au sein des diverses catégories générales. Avec une base de 16 vous êtes au fait des différentes forces et faiblesses que possèdent les créatures les plus communes. Avec une base de 20 il est rare que vous rencontriez des monstres que vous seriez incapable d''analyser en quelques secondes, un exploit dont même un sorceleur serait fier.', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000003', 'Déduction', 'La capacité à formuler des conclusions grâce aux indices dont vous disposez. Avec une base de 10 vos intuitions vous mettent en général sur la bonne piste. Avec une base de 13 vos ressentiments sont presque toujours fondés, vous pouvez même les étayer à l''aide de raisonnements logiques. Avec une base de 16 il vous suffit de quelques indices pour avoir ce qui s''est passé ou ce qui pourrait advenir. Avec une base de 20 vous ne vous trompez presque jamais dans vos déductions. Vous êtes capables de trouver des réponses même lorsque vous disposez de preuves partielles.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000004', 'Éducation', 'Reflète votre niveau d''instruction. Avec une base de 10 vos parents vous ont légué des connaissances sommaires sur la marche du monde. Avec une base de 13 vous avez probablement bénéficié des leçons d''un mentor ou eu la chance de fréquenter l''une des rares écoles ouvertes dans votre région natale. Avec une base de 16 vous avez acquis un savoir encyclopédique en allant par exemple étudier à Oxenfurt ou dans une autre académie du genre. Avec une base de 20 vous êtes un érudit capable de rivaliser d''intelligence avec des professeurs d''université et des mages siégeant aux conseils royaux.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000005', 'Enseignement', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000006', 'Étiquette', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000007', 'Langue commune', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 2, 'Langue', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000008', 'Négoce', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000009', 'Survie', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000010', 'Tactique', 'La capacité à dispenser son savoir. Vous n''êtes pas tenu de maîtriser cette capacité pour en enseigner d''autres, mais elle vous facilitera la tâche. Avec une base de 10 vous savez expliquer du début à la fin un procédé simple à votre élève, mais sans que ce dernier saisisse à coup sûr tous les tenants et aboutissants de votre cheminement. Avec une base de 13 vous pouvez enseigner les bases d''une compétence à un élève attentif sans rencontrer de problème particulier. Avec une base de 16 si vous disposez de suffisamment de temps, vous pouvez apprendre des procédés plus complexes à vos étudiants, même s''ils ne sont guère attentifs. Avec une base de 20 vous êtes un maître pédagogue capable d''intéresser n''importe qui. Puisque vos leçons font toujours mouche du premier coup, vous avez rarement besoin de vous répéter.', FALSE, '', '', 2, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000011', 'Vigilance', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000012', 'Bagarre', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000013', 'Langue Ancienne', 'Lorem Ipsum', FALSE, '', '', 2, 'Langue', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000014', 'Langue Naine', 'Lorem Ipsum', FALSE, '', '', 2, 'Langue', '00000000-0000-0000-0000-000000000001'),
    ('10000000-0000-0000-0000-000000000015', 'Bâton/Lance', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000016', 'Équitation', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000017', 'Escrime', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000018', 'Esquive/Évasion', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000019', 'Lame courte', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000020', 'Mêlée', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000021', 'Navigation', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000002'),
    ('10000000-0000-0000-0000-000000000022', 'Adresse', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000003'),
    ('10000000-0000-0000-0000-000000000023', 'Arbalète', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000003'),
    ('10000000-0000-0000-0000-000000000024', 'Archerie', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000003'),
    ('10000000-0000-0000-0000-000000000025', 'Athlétisme', 'Lorem Ipsum', FALSE, '', '', 1, 'Combat', '00000000-0000-0000-0000-000000000003'),
    ('10000000-0000-0000-0000-000000000026', 'Furtivité', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000003'),
    ('10000000-0000-0000-0000-000000000027', 'Physique', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000004'),
    ('10000000-0000-0000-0000-000000000028', 'Résilience', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000004'),
    ('10000000-0000-0000-0000-000000000029', 'Charisme', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000030', 'Commandement', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000031', 'Duperie', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000032', 'Jeu', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000033', 'Persuasion', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000034', 'Psychologie', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000035', 'Représentation', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000036', 'Séduction', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000037', 'Stylisme', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000038', 'Alchimie', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000039', 'Artisanat', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000040', 'Contrefaçon', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000041', 'Déguisement', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000042', 'Fabrication de piège', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000043', 'Premiers soins', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000044', 'Courage', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000045', 'Envoûtement', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000046', 'Incantation', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000047', 'Intimidation', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000048', 'Résistance à la magie', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000050', 'Beau-arts', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000006'),
    ('10000000-0000-0000-0000-000000000051', 'Crochetage', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000007'),
    ('10000000-0000-0000-0000-000000000052', 'Résistance à la contrainte', 'Lorem Ipsum', FALSE, '', '', 1, '', '00000000-0000-0000-0000-000000000008'),
    ('10000000-0000-0000-0000-000000000053', 'Rituels', 'Lorem Ipsum', FALSE, '', '', 2, '', '00000000-0000-0000-0000-000000000008');

-- ============================================
-- PROFESSIONS
-- ============================================

INSERT INTO witcher.profession (id_profession, nom, description, vigueur, nb_objet, max_sort, max_rituel, max_envoutement, max_invocation) VALUES
    ('20000000-0000-0000-0000-000000000001', 'Artisan', 'Un artisan talentueux peut effectuer des réparations de fortune sur une armure ou une arme pour qu''elle reste utilisable le temps du combat. Il pourra par exemple nouer deux parties d''une corde d''arc rompue, affûter la lame d''une épée ou clouer une plaque de métal sur un bouclier fendu. L''artisan consacre un tour à cette action. Il effectue alors un jet de rafistolage dont le SD est égal au SD de fabrication de l''objet -3. S''il réussit, l''armure brisée regagne la moitié de son PA total, ou la moitié de sa fiabilité dans le cas d''une épée ou d''un bouclier. Tant qu''elle n''est pas correctement réparée à l''aide d''une forge, une arme n''inflige que la moitié des dégâts normaux.', 0, 5, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000002', 'Barde', 'Le barde est un compagnon des plus précieux, surtout quand le groupe commence à manquer d''argent. Il peut réaliser un jet de prestation et se donner en spectacle sur la place de la ville durant une heure. Le résultat du jet correspond au montant qu''il a récolté en se produisant dans la rue. Un échec critique peut diminuer le résultat du jet, et si le total devient négatif, cela signifie que la barde n''a pas réussi à recueillir une seule pièce. Il se fait huer par les habitants pour sa piètre performance et subit un malus de -2 en charisme lorsqu''il interagit avec les citadins jusqu''à la fin de la journée.', 0, 5, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000003', 'Criminel', 'Qu''ils soient assassins, voleurs faussaires ou contrebandiers, tous les hors-la-loi ont en commun une paranoïa constante qui leur permet d''éviter les problèmes. Lorsqu''un criminel arrive à moins de 10m d''un piège (ce qui inclut les pièges expérimentaux, les chausses-trappes des hommes d''armes et les embuscades), il effectue immédiatement un jet de paranoïa exercée dont le SD est égal à celui requis pour déceler le piège, au résultat du jet de furtivité du groupe posté en embuscade ou au SD fixé par le MJ. Même s''il n''arrive pas à repérer le piège, il sentira au fond de lui-même que quelque-chose ne va pas.', 0, 5, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000004', 'Docteur', 'N''importe qui est capable d''appliquer un onguent ou de bander une blessure, mais seul un docteur a reçu la formation nécessaire pour accomplir des actes chirurgicaux d''une grande complexité. Un docteur avec mains thérapeutiques est le seul personnage capable de soigner une blessure critique. Pour soigner une blessure critique, il doit réussir un nombre de jets de mains thérapeutiques qui dépend de la gravité de cette blessure. Le SD du jet est aussi basé sur ce paramètre. Les mains thérapeutiques peuvent aussi servir lors des actions de premiers soins.', 0, 5, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000005', 'Homme d''arme', 'Les véritables hommes d''armes issus, par exemple, des Stries Bleues témériennes ou de la brigade Imprera de Nilfgaard sont des vétérans endurcis qui n''abandonnent jamais et ne se rendent pas. Lorsque les points de santé d''un homme d''armes tombent à 0 ou moins, il peut effectuer un jet de dur à cuire dont le SD est égal au double de son score de santé négatif. S''il échoue, il entre en état de mort imminente selon les règles habituelles. S''il le réussit, il peut continuer à se battre comme s''il avait atteint son seuil de blessures. Lorsqu''il subit des dégâts, il réalise un nouveau jet dont le SD est calculé selon son nouveau score de santé.', 0, 5, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000006', 'Mage', 'Pour devenir pleinement un mage, une personne sensible à la magie doit apprendre les bases de cet art au sein d''une académie de magie. Un mage peut réaliser un jet d''exercice de la magie dès qu''il se trouve face à un phénomène magique ou un sort inconnu, ou encore lorsqu''il analyse une théorie de la magie. Le SD du jet est fixé par le MJ. En cas de réussite, le mage apprend tout ce qu''il y a à savoir sur le phénomène en question. Un jet d''exercice de la magie peut aussi servir à détecter la magie en cours d''utilisation ou les spectres.', 5, 5, 5, 1, 1, 0),
    ('20000000-0000-0000-0000-000000000007', 'Marchand', 'Un marchand ordinaire gagne sa vie grâce à son échope qui attire les clients alentours. En revanche, un commerçant itinérant part à la rencontre de ses clients. Il parcourt les routes du monde entier, ce qui lui permet d''en apprendre beaucoup sur les peuples qu''il croise. Un marchand peut effectuer un jet de grand voyageur chaque fois qu''il désire connaître une anecdote concernant un objet, une culture ou une région particulière. Le MJ fixe le SD du jet. Si ce dernier réussit, le marchand se rappelle la réponse à la question posée grâce aux souvenirs datant de son dernier voyage dans le lieu concerné.', 0, 3, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000008', 'Prêtre', 'Les temples du monde entier sont bien souvent des lieux chaleureux qui aident les fidèles et accueillent les nouveaux convertis. Un prêtre peut réaliser un jet d''initié des dieux dont le SD est fixé par les MJ dans les églises de cette religion pour obtenir un hébergement gratuit, des soins et d''autres services, à la discrétion du MJ. L''initiation des dieux fonctionne aussi auprès des croyants de la même confession, bien qu''ils aient moins à offrir qu''un temple. N''oubliez pas qu''initié des dieux ne fonctionne jamais avec les membres d''une autre religion.', 2, 5, 0, 2, 2, 2),
    ('20000000-0000-0000-0000-000000000009', 'Sorceleur', 'Les sorceleurs passent les premières années de leur vie confinés entre les murs de leur forteresse, où ils étudient d''énormes tomes poussiéreux et suivent un entraînement martial démentiel. De nombreux savants ont démontré que les meilleures armes d''un sorceleur étaient sa connaissance des monstres ainsi que ses capacités d''adaptation. Il peut donc diminuer les pénalités provoquées par un environnement hostile ou un relief accidenté d''une valeur égale à la moitié de son score de formation de sorceleur (minimum 1). Vous pouvez également utiliser formation de sorceleur dans les situations requérant l''usage de la compétence connaissance des monstres.', 2, 2, 0, 0, 0, 0),
    ('20000000-0000-0000-0000-000000000010', 'Noble', 'Qu''il soit noble de naissance ou qu''il ait acquis ses titres en accomplissant des faits d''armes, l''aristocrate affiche son statut privilégié afin que nul ne l''ignore. Les paysans peuvent bien maudire les familles nobles et les ridiculiser à l''abri dans leurs chaumières, mais aucun d''entre eux n''oserait les insulter en face. Un noble ajoute son niveau de prestige à son score de réputation lorsqu''il se trouve sur sa terre natale ou dans un pays allié. Lorsqu''il se rend dans un territoire ouvertement en guerre avec son pays d''origine ou qui conserve une position de neutralité, il n''ajoute que la moitié de son niveau de prestige.', 0, 5, 0, 0, 0, 0);

-- ============================================
-- INVENTAIRE_WIKI
-- ============================================

INSERT INTO witcher.inventaire_wiki (id_inventaire_wiki, quantite, nom, type, effet, is_special, id_profession) VALUES
    ('30000000-0000-0000-0000-000000000001', 50, 'couronnes de composants', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000002', 1, 'ensemble d''alchimie', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000003', 1, 'épée longue de fer', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000004', 1, 'forge portable', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000005', 1, 'masse d''armes', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000006', 1, 'outils d''artisan', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000007', 1, 'outils de marchand', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000008', 1, 'petit coffre', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000009', 1, 'sablier', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000010', 1, 'serrure', '', '', FALSE, '20000000-0000-0000-0000-000000000001'),
    ('30000000-0000-0000-0000-000000000011', 1, 'bourse', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000012', 1, 'dague', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000013', 1, 'flasque d''alcool', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000014', 1, 'fourreau de jarretière', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000015', 1, 'jeu de qwynt', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000016', 1, 'journal cadenassé', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000017', 1, 'miroir de poche', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000018', 1, 'parfum/eau de toilette', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000019', 1, 'piste de dé', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000020', 1, 'un instrument', '', '', FALSE, '20000000-0000-0000-0000-000000000002'),
    ('30000000-0000-0000-0000-000000000021', 1, 'chloroforme', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000022', 1, 'coup-de-poing', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000023', 5, 'couteaux de lancer', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000024', 1, 'dés pipés', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000025', 1, 'fourreaux de manche', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000026', 1, 'lanterne sourde', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000027', 1, 'outils de voleur', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000028', 1, 'sacoche', '', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000029', 1, 'stylet', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000003'),
    ('30000000-0000-0000-0000-000000000031', 10, 'bougies', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000032', 1, 'couverture', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000033', 1, 'dague', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000034', 10, 'fluide de sterilisation', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000035', 1, 'grande tente', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000036', 10, 'herbes engourdissantes', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000037', 1, 'instruments chirurgicaux', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000038', 1, 'necessaire d''écriture', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000039', 10, 'poudre de coagulation', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000040', 1, 'sablier', '', '', FALSE, '20000000-0000-0000-0000-000000000004'),
    ('30000000-0000-0000-0000-000000000041', 1, 'arbalète + 20 carreaux', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000042', 1, 'boucle d''acier', 'bouclier', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000043', 1, 'brigandine', 'armure', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000044', 1, 'camail', '', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000045', 5, 'couteaux de lancer', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000046', 1, 'hache de bataille', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000047', 1, 'Kord', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000048', 1, 'lance', 'lance', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000049', 1, 'pantalon renforcé', 'armure', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000050', 1, 'sacoche', '', '', FALSE, '20000000-0000-0000-0000-000000000005'),
    ('30000000-0000-0000-0000-000000000051', 100, 'couronnes de composants', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000052', 1, 'bâton', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000053', 1, 'bourse', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000054', 1, 'dague', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000055', 1, 'fourreau de jarretière', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000056', 1, 'journal', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000057', 1, 'miroir de poche', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000058', 1, 'necessaire d''écriture', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000059', 1, 'sablier', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000060', 1, 'trousse de maquillage', '', '', FALSE, '20000000-0000-0000-0000-000000000006'),
    ('30000000-0000-0000-0000-000000000061', 1, 'arbalète + 20 carreaux', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000062', 1, 'dague', '', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000063', 1, 'grande tente', '', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000064', 1, 'journal', '', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000065', 1, 'nécessaire d''écriture', '', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000066', 1, 'outils de marchand', '', '', FALSE, '20000000-0000-0000-0000-000000000007'),
    ('30000000-0000-0000-0000-000000000067', 100, 'couronnes de composants', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000068', 1, 'bâton', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000069', 1, 'dague', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000070', 1, 'ensemble d''alchimie', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000071', 5, 'fluide stérilisant', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000072', 5, 'herbes engourdissantes', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000073', 1, 'instruments chirurgicaux', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000074', 5, 'poudre de coagulation', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000075', 1, 'sablier', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000076', 1, 'symbole sacré', '', '', FALSE, '20000000-0000-0000-0000-000000000008'),
    ('30000000-0000-0000-0000-000000000077', 1, 'arbalète de poing', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000078', 5, 'couteaux de lancé', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000079', 1, 'ensemble d''alchimie', '', '', FALSE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000080', 1, 'gambison à tissage rembourré', 'armure', '', FALSE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000081', 1, 'cheval', '', '', FALSE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000082', 1, 'épée de sorceleur en acier', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000083', 1, 'épée de sorceleur en argent', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000084', 1, 'formule de décoction', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000085', 2, 'formule d''huile', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000086', 2, 'formule de potion', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000087', 1, 'médaillon de sorceleur', '', '', TRUE, '20000000-0000-0000-0000-000000000009'),
    ('30000000-0000-0000-0000-000000000088', 1, 'bijou', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000089', 1, 'cheval', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000090', 1, 'eau de toilette', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000091', 1, 'encre invisible', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000092', 1, 'esboda', 'arme', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000093', 1, 'journal cadenassé', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000094', 1, 'nécessaire d''écriture', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000095', 1, 'poche secrète', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000096', 1, 'trousse de maquillage', '', '', FALSE, '20000000-0000-0000-0000-000000000010'),
    ('30000000-0000-0000-0000-000000000097', 1, 'vêtements à la mode', '', '', FALSE, '20000000-0000-0000-0000-000000000010');

-- ============================================
-- COMPETENCE_PROFESSION
-- Table de liaison Many-to-Many
-- ============================================

INSERT INTO witcher.competence_profession (id_profession, id_competence) VALUES
    -- Profession 1 : Artisan
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000004'), -- Éducation
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000008'), -- Négoce
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000025'), -- Athlétisme
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000027'), -- Physique
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000028'), -- Résilience
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000030'), -- Commandement
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000033'), -- Persuasion
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000038'), -- Alchimie
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000039'), -- Artisanat
    ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000050'), -- Beau-arts
    
    -- Profession 2 : Barde
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000001'), -- Connaissance de la rue
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000006'), -- Étiquette
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000029'), -- Charisme
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000031'), -- Duperie
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000033'), -- Persuasion
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000035'), -- Représentation
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000036'), -- Séduction
    ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000050'), -- Beau-arts
    
    -- Profession 3 : Criminel
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000001'), -- Connaissance de la rue
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000011'), -- Vigilance
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000019'), -- Lame courte
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000022'), -- Adresse
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000025'), -- Athlétisme
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000026'), -- Furtivité
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000031'), -- Duperie
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000040'), -- Contrefaçon
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000047'), -- Intimidation
    ('20000000-0000-0000-0000-000000000003', '10000000-0000-0000-0000-000000000051'), -- Crochetage
    
    -- Profession 4 : Docteur
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000003'), -- Déduction
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000006'), -- Étiquette
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000008'), -- Négoce
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000009'), -- Survie
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000019'), -- Lame courte
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000029'), -- Charisme
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000038'), -- Alchimie
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000044'), -- Courage
    ('20000000-0000-0000-0000-000000000004', '10000000-0000-0000-0000-000000000048'), -- Résistance à la magie
    
    -- Profession 5 : Homme d'arme
    ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000009'), -- Survie
    ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000018'), -- Esquive/Évasion
    ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000027'), -- Physique
    ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000044'), -- Courage
    ('20000000-0000-0000-0000-000000000005', '10000000-0000-0000-0000-000000000047'), -- Intimidation
    
    -- Profession 6 : Mage
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000004'), -- Éducation
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000006'), -- Étiquette
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000015'), -- Bâton/Lance
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000036'), -- Séduction
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000037'), -- Stylisme
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000045'), -- Envoûtement
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000046'), -- Incantation
    ('20000000-0000-0000-0000-000000000006', '10000000-0000-0000-0000-000000000048'), -- Résistance à la magie
    
    -- Profession 7 : Marchand
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000001'), -- Connaissance de la rue
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000004'), -- Éducation
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000008'), -- Négoce
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000019'), -- Lame courte
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000029'), -- Charisme
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000032'), -- Jeu
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000033'), -- Persuasion
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000007', '10000000-0000-0000-0000-000000000052'), -- Résistance à la contrainte
    
    -- Profession 8 : Prêtre
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000005'), -- Enseignement
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000009'), -- Survie
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000029'), -- Charisme
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000030'), -- Commandement
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000043'), -- Premiers soins
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000044'), -- Courage
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000045'), -- Envoûtement
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000046'), -- Incantation
    ('20000000-0000-0000-0000-000000000008', '10000000-0000-0000-0000-000000000053'), -- Rituels
    
    -- Profession 9 : Sorceleur
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000003'), -- Déduction
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000009'), -- Survie
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000011'), -- Vigilance
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000016'), -- Équitation
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000017'), -- Escrime
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000018'), -- Esquive/Évasion
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000025'), -- Athlétisme
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000026'), -- Furtivité
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000038'), -- Alchimie
    ('20000000-0000-0000-0000-000000000009', '10000000-0000-0000-0000-000000000046'), -- Incantation
    
    -- Profession 10 : Noble
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000004'), -- Éducation
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000006'), -- Étiquette
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000011'), -- Vigilance
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000016'), -- Équitation
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000030'), -- Commandement
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000031'), -- Duperie
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000033'), -- Persuasion
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000034'), -- Psychologie
    ('20000000-0000-0000-0000-000000000010', '10000000-0000-0000-0000-000000000037'); -- Stylisme

-- ============================================
-- ENVOÛTEMENTS
-- ============================================

INSERT INTO witcher.envoutement (id_envoutement, nom, cout, effet, prerequis, danger) VALUES
    ('40000000-0000-0000-0000-000000000001', 'L''envoûtement des Ombres', '4', 'L''envoûtement des ombres crée des murmures dans les ténèbres et des silhouettes dans les coins. Le sujet doit faire des jets de vigilance au hasard avec un SD non spécifié, apercevant toujours quelque chose ou quelqu''un du coin de l''œil. Les jets de vigilance ne sont jamais pour une menace réelle, juste des visions. Le sujet doit apporter un bol d''eau pure, une branche de myrte blanc et une bouteille d''encre dans une clairière lors d''une lune croissante. Quand la lune est au plus haut, le sujet doit verser l''encre dans l''eau, tremper la branche dans le mélange et asperger des gouttelettes en cercle autour de lui tout en retenant sa respiration.', 'Un bol d''eau pure, une branche de myrte blanc, une bouteille d''encre, une clairière, une lune croissante', 'Faible'), 
    ('40000000-0000-0000-0000-000000000002', 'La démangeaison éternelle', '4', 'La démangeaison éternelle fait pousser des pustules qui grattent et brûlent sur les parties intimes du sujet. La démangeaison n''inflige pas de dégâts, mais dérange constamment, ce qui inflige un malus de -1 à toutes les tâches. En plus du -1, la cible a un malus de -5 en séduction une fois dans "la chambre à coucher". Le sujet doit rassembler 1 dose de sclérodermie, de petite ciguë et de bryone. Il doit allumer un feu de camp et faire un bouquet avec les herbes. Quand tout est prêt, le sujet doit embraser les herbes et effriter les cendres chaudes sur la zone atteinte tout en récitant une série de mots magiques.', '1 dose de sclérodermie, 1 dose de petite ciguë, 1 dose de bryone, un feu de camp', 'Faible'),    
    ('40000000-0000-0000-0000-000000000003', 'La chance démoniaque', '8', 'La chance démoniaque tourmente le sujet avec des touches de mauvaise fortune. Dans des situations très stressantes, comme un combat ou en effectuant une tâche avec un délai très court ou un SD supérieur à 15, le sujet fait un échec critique sur un 1 ou 2 naturel.', 'Un clou en argent, 2 doses d''aconit, une mèche de cheveux d''une vierge', 'Modéré'),    
    ('40000000-0000-0000-0000-000000000004', 'Le cauchemar', '8', 'Le cauchemar fait revivre au sujet le même cauchemar horrifique. Chaque nuit, le sujet doit faire un jet de résistance à la contrainte avec un SD égal au jet d''envoûtement du lanceur pour lancer cet envoûtement. En cas de réussite, le sujet parvient à dormir une nuit complète, bien qu''elle ne soit pas reposante. En cas d''échec, il dort à peine et ne régénère pas d''END ou de PS durant la nuit. S''il échoue trois nuits d''affilée, il réduit de moitié son endurance et a un malus de -2 à toutes ses actions jusqu''à pouvoir faire une nuit complète.', '5 bougies, 5 os de bête, 1 minerai luisant', 'Modéré'),
    ('40000000-0000-0000-0000-000000000005', 'Le baiser de Pesta', '12', 'Le baiser de Pesta ôte au sujet sa capacité de combattre les maladies et sa résistance à la nausée. À chaque fois que le sujet est en contact avec une personne malade, il a 75% de chance d''attraper la maladie. À chaque fois qu''il sent quelque chose de nauséabond, même légèrement, il doit réussir un jet de résilience avec un SD 16 ou être nauséeux.', '3 doses d''argile alluviale, 1 dose de charbon, 3 doses de résine, 1 dose de poussière imprégnée', 'Élevé'),    
    ('40000000-0000-0000-0000-000000000006', 'L''envoûtement de la bête', '12', 'L''envoûtement de la bête rend la cible répugnante aux yeux des animaux et des bêtes. Dès que la cible s''approche d''un animal à moins de 10m, ce dernier réagira mal au sujet, ce qui lui inflige un malus de -3 en survie en ce qui concerne le dressage des animaux. À chaque fois que le sujet s''approche d''un animal à moins de 10m, il y a 50% de chance pour que l''animal attaque.', 'Un petit animal vivant, 2 doses de gui, une dose de phosphore, 2 doses d''œil de corbeau, 3 doses de racine de mandragore', 'Élevé');

-- ============================================
-- MAGIE
-- ============================================

INSERT INTO witcher.magie (id_magie, nom, cout, effet, portee, duree, nature, niveau, contre, type) VALUES
    -- Sorts de Novice - Mixte
    ('50000000-0000-0000-0000-000000000001', 'Compas magique', '3 END', 'Le compas magique permet de déterminer instantanément la direction vers un endroit où vous êtes déjà allée auparavant. Sinon, le sort indique le nord.', 'Personnelle', '1D6 heure', 'Mixte', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000002', 'Dissipation', 'Variable', 'Dissipation met fin à un sort, un rituel ou une malédiction en cours dans sa portée. Ce sort permet d''annuler une magie qui dure et peut être utilisé comme une action défensive pour bloquer une attaque magique avec ou sans composants. Pour annuler un effet magique, vous devez dépenser la moitié des points de Résilience utilisés par le lanceur et réussir un jet d''Incantation en opposition à son jet pour lancer le sort.', '10 m', 'Instantané', 'Mixte', 'Sort de novice', 'Incantation', 'Sort'),
    ('50000000-0000-0000-0000-000000000003', 'Glamour', '5 END', 'Glamour vous permet de mettre une illusion autour de vous qui vous fait paraître éblouissant. Ce sort vous donne un bonus de +3 en Séduction, Charisme et Commandement.', 'Personnelle', '1D6 heures', 'Mixte', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000004', 'Invocation de bâton', '2 END', 'Invocation de bâton vous permet de dématérialiser votre bâton et de le téléporter à un endroit où vous avez été présent au cours du dernier jour. Vous pouvez lancer à nouveau le sort pour faire revenir le bâton à vous.', '', 'Instantané', 'Mixte', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000005', 'Manipulation de l''esprit', '3 END', 'Manipulation de l''esprit vous permet de forcer votre cible à ressentir l''une de ces émotions pendant la durée du sort : haine, amour, dépression ou euphorie.', '5 m', '1D10 rounds', 'Mixte', 'Sort de novice', 'Résistance à la magie', 'Sort'),
    ('50000000-0000-0000-0000-000000000006', 'Miroir d''Afan', '3 END', 'Inventé par le talentueux magicien Aedirnien Afan de Guletta, le miroir d''Afan crée 1D10 copies illusoires du lanceur. Ces copies sont intangibles, mais impossibles à différencier du lanceur, qui les contrôle par l''esprit. Contrôler ces copies ne demande pas d''action, mais elles ne peuvent pas se déplacer au-delà de la portée du sort.', '10 m', 'Actif (2 END)', 'Mixte', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000007', 'Poussière aveuglante', '3 END', 'La poussière aveuglante vous permet de lancer une poussière magique dans les yeux d''une cible afin de l''aveugler pour la durée du sort.', '4 m', '1D10 rounds', 'Mixte', 'Sort de novice', 'Esquive ou Blocage', 'Sort'),
    ('50000000-0000-0000-0000-000000000008', 'Télépathie', '2 END', 'Télépathie vous permet de communiquer par télépathie avec une personne pendant la durée du sort, sans barrière de langage.', '10 m', 'Actif (1 END)', 'Mixte', 'Sort de novice', '', 'Sort'),
    
    -- Sorts de Novice - Terre
    ('50000000-0000-0000-0000-000000000009', 'Cenlly Graig', '3 END', 'Cenlly Graig lance des pierres acérées sur votre adversaire. Lors de votre jet, pour chaque point qui dépasse la défense de votre adversaire (maximum 10), vous infligez 1D6 points de dégâts. Chaque lancer compte comme une attaque à part entière.', '5 m', 'Instantané', 'Terre', 'Sort de novice', 'Esquive ou Blocage', 'Sort'),
    ('50000000-0000-0000-0000-000000000010', 'Codi Bywyd', '2 END', 'Codi Bywyd permet de faire parvenir à maturité une graine en l''espace d''un round. Cela permet de faire pousser des herbes et des plantes alchimiques, mais rien de plus grand comme un arbre.', '4 m', 'Instantané', 'Terre', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000011', 'Diagnostic', '3 END', 'Diagnostic permet d''évaluer rapidement la santé d''une personne et de déterminer combien de points de santé elle a, ses blessures et si elle est malade ou empoisonnée.', '5 m', 'Instantané', 'Terre', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000012', 'Pic terrestre', '5 END', 'Pic terrestre crée une stalagmite inclinée de manière à pouvoir poignarder une cible. Le pic inflige 5D6 points de dégâts et reste en place jusqu''à être détruit. Il peut être détruit en lui infligeant 20 points de dégâts.', '6 m', 'Instantané', 'Terre', 'Sort de novice', 'Esquive ou Blocage', 'Sort'),
    ('50000000-0000-0000-0000-000000000013', 'Plume de Luthien', '2 END', 'Nommé ainsi d''après son créateur, Luthien de Ebbing, Plume de Luthien peut graver des écritures ou des dessins sur n''importe quelle surface solide. Le sort ne peut pas être utilisé sur une créature vivante.', '1 m', 'Instantané', 'Terre', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000014', 'Prison de Talfryn', '3 END', 'Prison de Talfryn tient son nom de Talfryn de Nazair, un chevalier traître qui a été piégé trois jours durant dans le jardin du magicien Drystan. Le sort permet d''empêcher une cible dans des racines. Il faut 15 points de dégâts pour détruire les racines. Autrement, pour s''en échapper, il faut un jet d''esquive ou d''évasion avec un SD égal à votre résultat pour lancer le sort.', '10 m', 'Jusqu''à destruction', 'Terre', 'Sort de novice', 'Esquive', 'Sort'),
    ('50000000-0000-0000-0000-000000000015', 'Soins magiques', '5 END', 'Soins magiques stimule la régénération naturelle d''une cible en lui soignant 3 points de dégâts par round. L''effet dure pendant la durée du sort. Sinon, ce sort peut être utilisé plusieurs reprises pour soigner une blessure critique.', '2 m', '1D10 rounds', 'Terre', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000016', 'Souffle de Korath', '2 END', 'Souffle de Korath démolit une surface de terre ou de pierre proche et pulvérise du sable brûlant dans un cône de 3m devant le lanceur. Les adversaires dans cette zone qui ratent leur défense sont aveuglés pour 1D6 rounds.', 'Cône de 3 m', 'Instantané', 'Terre', 'Sort de novice', 'Esquive ou Blocage', 'Sort'),
    
    -- Sorts de Novice - Air
    ('50000000-0000-0000-0000-000000000017', 'Abri d''Urien', '3 END', 'Abri d''Urien, créé par le magicien de l''air Urien de Cidari, permet d''annuler les effets d''un temps hostile dans un rayon de 8 m autour du lanceur. Cela annule la chaleur et le froid extrême, la pluie et la neige.', 'Rayon de 8 m', '1D6 heures', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000018', 'Adenydd', '4 END', 'Adenydd vous allège légèrement et créé une trajectoire de descente lorsque vous chutez. Ce qui signifie que pour 2 m de chute, vous avancez de 2 m dans une direction. Si vous touchez terre avant la fin du sort, vous ne subirez aucun dégâts.', 'Personnelle', 'Actif (2 END)', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000019', 'Air frais', '2 END', 'Air frais dégage une zone d''un rayon de 4 m autour de vous de tout poison, fumée ou autre air vicié pendant la durée du sort.', 'Rayon de 4 m', 'Actif (2 END)', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000020', 'Poche d''air', '3 END', 'Poche d''air créé une poche d''air frais sous l''eau ou dans tout autre endroit où il n''y a normalement pas d''air respirable. La poche fait un rayon de 1 m pendant toute la durée du sort.', '12 m', '2D10 rounds', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000021', 'Rafale de Bronwyn', '2 END', 'Rafale de Bronwyn tire son nom du mage et pillard skellige, Bronwyn Œil-Sûr. Le sort permet de faire reculer une cible d''autant de mètres que le nombre de points supérieurs à la défense de l''adversaire sur votre jet. Cette attaque n''inflige que 1D6 points de dégâts, mais si votre adversaire percute quelque chose, il prend des dégâts d''éperonnage.', '2 m', 'Instantané', 'Air', 'Sort de novice', 'Esquive', 'Sort'),
    ('50000000-0000-0000-0000-000000000022', 'Télékinésie', '3 END', 'Télékinésie permet de soulever et manipuler un objet (jusqu''à 5 ENC par niveau d''Incantation) comme si vous le teniez.', '5 m', 'Actif (2 END)', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000023', 'Tempête statique', '5 END', 'Tempête statique créé une zone électrifiée qui inflige des dégâts aux créatures qui s''y trouvent.', 'Rayon de 5 m', '2D6 rounds', 'Air', 'Sort de novice', '', 'Sort'),
    ('50000000-0000-0000-0000-000000000024', 'Zéphyr', '5 END', 'Zéphyr permet de faire éclater une rafale de vent qui repousse quiconque se trouve dans un rayon de 2 m autour de vous, d''autant de mètres que le nombre de points supérieurs à sa défense sur votre jet. Cette attaque n''inflige que 1D6 points de dégâts, mais si votre adversaire percute quelque chose, il subit des dégâts d''éperonnage.', 'Rayon de 2 m');


-- ============================================
-- RITUEL
-- ============================================

INSERT INTO rituel (id_rituel, nom, cout, effet, temps_preparation, sd, duree, composant, niveau)VALUES
    (1, 'Rituel de magie', '3 END', 'Le Rituel de magie crée un cercle magique qui renforce la tolérance à la magie, en accordant un bonus au seuil de Vigueur égal à la moitié du niveau de Rituels du lanceur. Ce bénéfice est accordé à la première personne avec des capacité magique qui pénètre dans le cercle et se concentre dessus, et dure 5 heures. Autrement, le lanceur peut dépenser le cercle pour gagner 1D6/2 unités de cinquième essence.', '5 rounds', '15', 'une utilisation', '1 poussière imprégnée, 2 craies, 2 dose de soufre, 2 verres', 'Rituel de novice'),
    (2, 'Hydromencie', '5 END', 'Hrydromencie permet de fixer une petite flaque d''eau pour y apercevoir un évènement  qui c''est passé au cours des deux derniers jours ou a lieu au moment même. Regarder un évènement du passé se fait sur le SD de base. Si vous essayez de voir un évènement qui se passe au moment même, augmentez le SDde 3. Si vous observez un évènement présent, si un magicien y est présent, il peut sentir l''augure avec un jet d''Exercice de la magie supérieur à votre jet de Rituels.', '5 rounds', '15 (18)', 'actif (2END)', 'une petite quantité d''eau ou un bol d''eau, 1 éclat de lune, 1 fruit de berbéris, 2 dose de cinquième essence, 2 perles, 2 pétales de myrte blanc.', 'Rituel de novice'),
    (3, 'Pyromancie', '3 END', 'Pyromancie permet de fixer un feu et y observer des évènements qui se passent au même moment. Pyromancie est plus dangereux qu''Hydromancie, ce qui le rend plus difficile à maintenir et impossible à regarder à l''envers. Cependant, il es plus facile de voir des évènements présents. Tout comme avec Hydromencie, un mage que vous observez ainsi peut sentir l''augure avec un jet d''Exercice de la magie supérieur a votre jet de Rituels.', '5 rounds', '15', 'actif (4END)', 'un petit feu, 2 dose de cinquième essence, 2 dose de cendres, 2 dose de cire, 2 œils de corbeau, 5 calcium equun', 'Rituel de novice'),
    (4, 'Message magique', '3 END', 'Message magique permet d''enregistrer un message de 5 minutes dans une gemme ou un bout de verre gravé d''un emblème magique. Vous pouvez déterminer jusqu''à trois déclencheurs spécifiques qui activeront le message. Une fois lu, le message reste en dormance jusqu''au prochain déclencheur. Quand il est déclenché, une illusion du lanceur apparaît et délivre le message. S''il est enregistré dans une gemme parfaite, le message est aussi clair que si le ritualiste était physiquement présent.', '5 rounds', '12', 'permanent', '1 dose de cinquième essence, 1 solution de mercure, 1 verre', 'Rituel de novice'),
    (5, 'Rituel de purification', '3 END', 'Rituel de purification purifie le corps d''une cible de tout poison ou maladie. Quand il est activé, le lanceur fait un jet de Rituels contre un SD spécifique afin de nettoyer le corps de la cible. L''alcool et les drogues sont assez facile, avec un SD 12. Les poisons et les huiles sont plus difficiles, avec un SD 15. Les maladies graves sont très difficiles à purifier avec un SD 18. Rituel purificateur ne permet pas de soigner les épidémies telles que la catriona.', '5 rounds', 'variabl', 'instantané', '1 feuille de balisse, 1 liqueur, 1 œil de corbeau, 2 craies, 2 dose de gui', 'Rituel de novice');

-- ============================================
-- RACE
-- ============================================

INSERT INTO race (id_race, nom) VALUES
    (1, 'Humain'),
    (2, 'Nain'),
    (3, 'Elfe'),
    (4, 'Halfelin'),
    (5, 'Sorceleur');


-- ============================================
-- PARTICULARITÉS
-- ============================================

INSERT INTO witcher.particularite (id_particularite, nom, description, id_race) VALUES
    -- Sorceleur (Race 5)
    ('80000000-0000-0000-0000-000000000001', 'Sens accrus', 'Les sorceleurs ont des sens plus développés que la moyenne des humains.', '70000000-0000-0000-0000-000000000005'),
    ('80000000-0000-0000-0000-000000000002', 'Mutation durable', 'Les sorceleurs ont subi des mutations qui les rendent différents des autres humains.', '70000000-0000-0000-0000-000000000005'),
    ('80000000-0000-0000-0000-000000000003', 'Sensibilité émoussée', 'Les sorceleurs ont une sensibilité émoussée par rapport aux autres humains.', '70000000-0000-0000-0000-000000000005'),
    ('80000000-0000-0000-0000-000000000004', 'Réflexes hors du commun', 'Les sorceleurs ont des réflexes hors du commun.', '70000000-0000-0000-0000-000000000005'),

    -- Elfe (Race 3)
    ('80000000-0000-0000-0000-000000000005', 'Esthète', 'Les elfes sont des êtres sensibles à la création artistique.', '70000000-0000-0000-0000-000000000003'),
    ('80000000-0000-0000-0000-000000000006', 'Œil d''aigle', 'Les elfes ont une vue perçante.', '70000000-0000-0000-0000-000000000003'),
    ('80000000-0000-0000-0000-000000000007', 'Harmonie avec la nature', 'Les elfes ont une affinité particulière avec la nature.', '70000000-0000-0000-0000-000000000003'),

    -- Nain (Race 2)
    ('80000000-0000-0000-0000-000000000008', 'Tanné comme le cuir', 'Les nains sont réputés pour leur résistance physique.', '70000000-0000-0000-0000-000000000002'),
    ('80000000-0000-0000-0000-000000000009', 'Coriace', 'Les nains sont coriaces.', '70000000-0000-0000-0000-000000000002'),
    ('80000000-0000-0000-0000-000000000010', 'Œil de l''expert', 'Les nains repèrent facilement les petits détails.', '70000000-0000-0000-0000-000000000002'),

    -- Humain (Race 1)
    ('80000000-0000-0000-0000-000000000011', 'Digne de confiance', 'Les humains sont réputés pour leur confiance.', '70000000-0000-0000-0000-000000000001'),
    ('80000000-0000-0000-0000-000000000012', 'Ingénieux', 'Les humains sont ingénieux.', '70000000-0000-0000-0000-000000000001'),
    ('80000000-0000-0000-0000-000000000013', 'Têtu comme une mule', 'Les humains sont têtus comme des mules.', '70000000-0000-0000-0000-000000000001'),

    -- Halfelin (Race 4)
    ('80000000-0000-0000-0000-000000000014', 'Agile', 'Les halfelins sont agiles.', '70000000-0000-0000-0000-000000000004'),
    ('80000000-0000-0000-0000-000000000015', 'Peuple agreste', 'Les halfelins sont des peuples agrestes.', '70000000-0000-0000-0000-000000000004'),
    ('80000000-0000-0000-0000-000000000016', 'Résilience à la magie', 'Les halfelins sont résilients à la magie.', '70000000-0000-0000-0000-000000000004');

-- ============================================
-- RÉPUTATIONS WIKI
-- ============================================

INSERT INTO witcher.reputation_wiki (id_reputation_wiki, territoire, valeur, id_race) VALUES
    -- Sorceleur
    ('90000000-0000-0000-0000-000000000001', 'Nord', 'Craint et haïs', '70000000-0000-0000-0000-000000000005'),
    ('90000000-0000-0000-0000-000000000002', 'Nilfgaard', 'Craint et haïs', '70000000-0000-0000-0000-000000000005'),
    ('90000000-0000-0000-0000-000000000003', 'Skellige', 'Toléré', '70000000-0000-0000-0000-000000000005'),
    ('90000000-0000-0000-0000-000000000004', 'Dol Blathana', 'Toléré', '70000000-0000-0000-0000-000000000005'),
    ('90000000-0000-0000-0000-000000000005', 'Mahakam', 'Toléré', '70000000-0000-0000-0000-000000000005'),

    -- Elfe
    ('90000000-0000-0000-0000-000000000006', 'Nord', 'Haïs', '70000000-0000-0000-0000-000000000003'),
    ('90000000-0000-0000-0000-000000000007', 'Nilfgaard', 'Neutre', '70000000-0000-0000-0000-000000000003'),
    ('90000000-0000-0000-0000-000000000008', 'Skellige', 'Neutre', '70000000-0000-0000-0000-000000000003'),
    ('90000000-0000-0000-0000-000000000009', 'Dol Blathana', 'Neutre', '70000000-0000-0000-0000-000000000003'),
    ('90000000-0000-0000-0000-000000000010', 'Mahakam', 'Neutre', '70000000-0000-0000-0000-000000000003'),

    -- Nain
    ('90000000-0000-0000-0000-000000000011', 'Nord', 'Toléré', '70000000-0000-0000-0000-000000000002'),
    ('90000000-0000-0000-0000-000000000012', 'Nilfgaard', 'Neutre', '70000000-0000-0000-0000-000000000002'),
    ('90000000-0000-0000-0000-000000000013', 'Skellige', 'Neutre', '70000000-0000-0000-0000-000000000002'),
    ('90000000-0000-0000-0000-000000000014', 'Dol Blathana', 'Neutre', '70000000-0000-0000-0000-000000000002'),
    ('90000000-0000-0000-0000-000000000015', 'Mahakam', 'Neutre', '70000000-0000-0000-0000-000000000002'),

    -- Humain
    ('90000000-0000-0000-0000-000000000017', 'Nilfgaard', 'Neutre', '70000000-0000-0000-0000-000000000001'),
    ('90000000-0000-0000-0000-000000000018', 'Skellige', 'Neutre', '70000000-0000-0000-0000-000000000001'),
    ('90000000-0000-0000-0000-000000000019', 'Dol Blathana', 'Haïs', '70000000-0000-0000-0000-000000000001'),
    ('90000000-0000-0000-0000-000000000020', 'Mahakam', 'Tolérés', '70000000-0000-0000-0000-000000000001'),

    -- Halfelin
    ('90000000-0000-0000-0000-000000000021', 'Nord', 'Toléré', '70000000-0000-0000-0000-000000000004'),
    ('90000000-0000-0000-0000-000000000022', 'Nilfgaard', 'Neutre', '70000000-0000-0000-0000-000000000004'),
    ('90000000-0000-0000-0000-000000000023', 'Skellige', 'Neutre', '70000000-0000-0000-0000-000000000004'),
    ('90000000-0000-0000-0000-000000000024', 'Dol Blathana', 'Neutre', '70000000-0000-0000-0000-000000000004'),
    ('90000000-0000-0000-0000-000000000025', 'Mahakam', 'Neutre', '70000000-0000-0000-0000-000000000004');

-- ============================================
-- UTILISATEURS
-- ============================================

INSERT INTO witcher.users (id_user, pseudo, email, password) VALUES
    ('A0000000-0000-0000-0000-000000000001', 'administrateur', 'admin@demo.com', '$2a$10$lJuSc5EoaqzFJR9wqPigtu6/wW3fqWSX9T0G6ih8tV09MGPbuxwdK'),
    ('A0000000-0000-0000-0000-000000000002', 'utilisateur', 'user@demo.com', '$2a$10$lJuSc5EoaqzFJR9wqPigtu6/wW3fqWSX9T0G6ih8tV09MGPbuxwdK');

-- ============================================
-- RÔLES UTILISATEURS
-- ============================================

INSERT INTO witcher.user_roles (id_user, role) VALUES
    ('A0000000-0000-0000-0000-000000000001', 'ROLE_ADMIN'),
    ('A0000000-0000-0000-0000-000000000002', 'ROLE_USER');

-- ============================================
-- MESSAGE DE CONFIRMATION FINAL
-- ============================================

DO $$
BEGIN
    RAISE NOTICE '================================================';
    RAISE NOTICE 'DONNÉES INITIALES CHARGÉES AVEC SUCCÈS !';
    RAISE NOTICE '================================================';
    RAISE NOTICE 'Récapitulatif :';
    RAISE NOTICE '  - Caractéristiques : 19';
    RAISE NOTICE '  - Compétences : 53';
    RAISE NOTICE '  - Professions : 10';
    RAISE NOTICE '  - Inventaire wiki : 97';
    RAISE NOTICE '  - Compétence-Profession : 91';
    RAISE NOTICE '  - Envoûtements : 6';
    RAISE NOTICE '  - Magies : 81';
    RAISE NOTICE '  - Rituels : 5';
    RAISE NOTICE '  - Races : 5';
    RAISE NOTICE '  - Particularités : 16';
    RAISE NOTICE '  - Réputations wiki : 25';
    RAISE NOTICE '  - Utilisateurs : 2';
    RAISE NOTICE '  - Rôles : 2';
    RAISE NOTICE '================================================';
    RAISE NOTICE 'Base de données prête à l''emploi !';
    RAISE NOTICE '================================================';
END $$;