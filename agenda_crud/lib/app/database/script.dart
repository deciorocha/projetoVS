final createTable = '''
CREATE TABLE contact(
id INT PRIMARY KEY, 
nome VARCHAR(200) NOT NULL,
telefone CHAR(16) NOT NULL,
email VARCHAR(150) NOT NULL,
url_avatar VACHAR(300) NOT NULL
)
''';

final insertRegistros = '''
INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES (
  'Hortência',
  '(11) 9 9562-3356',
  'hortencia@email.com',
  'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_960_720.png'
);

INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES (
  'Maitê',
  '(11) 9 9632-8578',
  'maite@email.com',
  'https://cdn.pixabay.com/photo/2014/04/03/10/32/user-310807_960_720.png'
);

INSERT INTO contact (nome, telefone, email, url_avatar)
VALUES (
  'Pietro',
  '(11) 9 9874-5656',
  'pietro@email.com',
  'https://cdn.pixabay.com/photo/2014/04/03/10/32/businessman-310819_960_720.png',
);

''';
