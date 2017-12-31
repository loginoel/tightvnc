## TightVNC and noVNC 

### Features

* Ubuntu 16.04.3 LTS (Xenial Xerus)
* TightVNC 1.3.10
* Xfce 4.12.2

### Screenshots

Running in Firefox before and after connecting:

<img src="https://i.imgur.com/ziZPIpH.jpg" width=400>&nbsp;
<img src="https://i.imgur.com/UZMnFPP.jpg" width=400>
<img src="https://i.imgur.com/eMGFt2c.jpg" width=400>

### Quick Start

Run Container

```bash
docker run -p 5902:5902 -p 6080:6080 -d punkerside/tightvnc
```

Url:

```bash
http://127.0.0.1:6080/vnc.html?host=127.0.0.1&port=6080
```

Password:

```bash
password
```
