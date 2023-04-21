# yh-peli


<h2> Pelaaminen: </h2>
Avaa komentorivi ja suorita pelin kansiossa komento:

<code> npm start </code>

avaa selaimeen osoite http://127.0.0.1:4000


<h2> Asentaminen: </h2>
Avaa komentorivi ja suorita seuraavat:
1. Kloonaa repositorio 

<code> git clone https://github.com/https://github.com/kivik-beep/yh-peli.git </code>

2. Siirry pelin kansioon 

<code> cd yh-peli </code>

3. Lataa riippuvuudet 

<code> npm install </code>

<h3> Komentorivin avaaminen </h3> 
Linux: Ctrl + Alt + t

Windows:
1. Avaa windows-valikko
2. Kirjoita "cmd" + paina enter

<h3>Noden ja npm asennus</h3>

1. Avaa komentorivi

2. Lataa Node.js lähdekoodi syöttämällä komento 

<code>curl -o- https://nodejs.org/dist/v16.13.1/node-v16.13.1.tar.gz | tar -xz</code>

3. Siirry kansioon 

<code>cd node-v16.13.1/</code>

4. Konfiguroi (tähän voi mennä hetki)

<code>./configure --prefix=$HOME/.local
make && make install</code>

5. Lisää tarpeellisia juttuja 

<code>echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
source ~/.bashrc</code>

6. Tarkista että kaikki onnistui komennolla joka näyttää noden version (saisi olla 9.6.5)

<code>npm --version</code>

