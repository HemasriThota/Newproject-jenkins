<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>NexusShop — Premium E‑Commerce</title>

<link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap)" rel="stylesheet">
<link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

<style>
:root {
    --bg: #f7f9fc;
    --primary: #0a2540;
    --accent: #1cd8d2;
    --accent2: #93edc7;
    --muted: #6b7280;
    --card: #fff;
    --glass: rgba(255,255,255,0.85);
    --radius: 14px;
    --surface: rgba(255, 255, 255, 0.6);
    --shadow: 0 6px 24px rgba(0,0,0,0.08);
    --container: 1200px;
}

*{box-sizing:border-box}
body{
    margin:0;
    font-family:Inter,system-ui,-apple-system,Segoe UI,Roboto;
    background:linear-gradient(to bottom,#e9f5ff,#ffffff);
    color:var(--primary);
}
.container{max-width:var(--container);margin:0 auto;padding:0 24px}

/* Header */
header{
    position:sticky;top:0;
    z-index:50;
    background:rgba(255,255,255,0.85);
    backdrop-filter:blur(10px);
    border-bottom:1px solid rgba(200,200,200,0.2);
    box-shadow:var(--shadow);
}
.header-inner{display:flex;align-items:center;justify-content:space-between;padding:14px 0;}
.brand{
    font-family:Poppins,sans-serif;font-weight:700;font-size:22px;color:var(--primary);
}
.brand .accent{color:var(--accent)}
nav.main-nav ul{
    display:flex;list-style:none;margin:0;padding:0;gap:20px;
}
nav.main-nav li a{
    font-weight:500;color:var(--primary);
    transition:.25s;
}
nav.main-nav li a:hover{color:var(--accent)}
.search{
    display:flex;align-items:center;gap:8px;
    background:var(--surface);
    border-radius:999px;
    padding:8px 14px;box-shadow:inset 0 0 6px rgba(0,0,0,0.05);
}
.search input{
    border:0;background:transparent;outline:none;width:100%;font-size:14px;
}
.icon-btn{background:none;border:0;font-size:16px;color:var(--primary);cursor:pointer}
.header-actions{display:flex;align-items:center;gap:12px}
.cart-count{
    position:absolute;top:-5px;right:-5px;background:var(--accent);color:#fff;
    font-size:11px;font-weight:700;border-radius:50%;width:18px;height:18px;display:grid;place-content:center;
}
.cart{position:relative}

/* Hero */
.hero{
    background:
      linear-gradient(180deg,rgba(10,37,64,0.65),rgba(10,37,64,0.6)),
      url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80)') center/cover no-repeat;
    color:white;
    text-align:center;
    padding:80px 20px;
    border-radius:0 0 var(--radius) var(--radius);
}
.hero h1{
    font-family:Poppins,sans-serif;
    font-size:48px;margin:0 0 10px;
    letter-spacing:-.02em;
}
.hero p{max-width:700px;margin:0 auto 26px;opacity:.95}
.btn{
    display:inline-flex;align-items:center;gap:10px;
    border-radius:999px;border:0;padding:12px 22px;font-weight:600;cursor:pointer;font-size:15px;
}
.btn-primary{
    background:linear-gradient(90deg,var(--accent),var(--accent2));
    color:#042233;box-shadow:0 0 20px rgba(28,216,210,.4);
    transition:.25s;
}
.btn-primary:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(28,216,210,.5);}
.btn-ghost{
    background:transparent;border:2px solid rgba(255,255,255,0.5);color:white;
}

/* Sections */
.section{padding:60px 0}
.title{text-align:center;margin-bottom:20px}
.muted{color:var(--muted)}

.grid{display:grid;gap:22px}

/* Category Cards */
.categories{grid-template-columns:repeat(auto-fit,minmax(150px,1fr))}
.cat-card{
    background:var(--glass);
    border-radius:var(--radius);
    text-align:center;
    padding:24px;
    backdrop-filter:blur(12px);
    box-shadow:var(--shadow);
    transition:transform .25s,box-shadow .25s;
}
.cat-card:hover{transform:translateY(-6px);box-shadow:0 15px 35px rgba(0,0,0,0.08)}
.cat-card .icon{font-size:30px;color:var(--accent);margin-bottom:6px}
.cat-card h4{margin:6px 0 0;font-weight:600}

/* Products */
.products{grid-template-columns:repeat(auto-fit,minmax(250px,1fr))}
.product{
    position:relative;
    background:var(--card);border-radius:var(--radius);
    overflow:hidden;box-shadow:var(--shadow);
    transition:transform .25s;
}
.product:hover{transform:translateY(-6px)}
.product img{width:100%;height:210px;object-fit:cover}
.product-body{padding:16px}
.product h5{margin:0;font-size:16px}
.price-row{display:flex;justify-content:space-between;align-items:center;margin-top:6px}
.price{font-weight:700}
.old-price{text-decoration:line-through;color:var(--muted);font-size:13px}
.rating{color:#ffc107;font-size:13px}
.product-footer{
    padding:14px;display:flex;gap:10px;background:#fafafa;border-top:1px solid #eee
}
.add-btn{
    flex:1;background:var(--primary);color:white;border:0;border-radius:8px;padding:10px;font-weight:600;cursor:pointer;
}
.add-btn:hover{background:#09345c}
.wish-btn{background:white;border:1px solid #eee;border-radius:8px;padding:10px;cursor:pointer}

/* Deal Section */
.deal{
    display:flex;flex-wrap:wrap;align-items:center;background:linear-gradient(135deg,#e0f7fa,#ffffff);
    border-radius:var(--radius);box-shadow:var(--shadow);overflow:hidden;
}
.deal img{width:50%;min-width:300px;height:320px;object-fit:cover}
.deal .content{padding:30px;flex:1}
.timer{display:flex;gap:10px}
.time-box{background:var(--primary);color:white;padding:14px;border-radius:10px;min-width:70px;text-align:center}

/* Newsletter */
.newsletter{
    background:linear-gradient(90deg,var(--accent),var(--accent2));
    color:#042233;padding:40px;text-align:center;border-radius:var(--radius)
}
.newsletter input{
    padding:12px 14px;border-radius:999px;border:0;width:280px;max-width:100%;margin-right:8px;
}

/* Footer */
footer{
    margin-top:30px;padding:40px 0;
    border-top:1px solid rgba(0,0,0,0.05);
    font-size:14px;color:var(--muted);
}

/* Responsive */
@media(max-width:800px){
  .hero h1{font-size:34px}
  .deal img{width:100%}
}
</style>
</head>

<body>
<header>
  <div class="container header-inner">
    <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
    <nav class="main-nav">
      <ul>
        <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
        <li><a href="#"><em class="fas fa-th"></em> Categories</a></li>
        <li><a href="#"><em class="fas fa-tag"></em> Deals</a></li>
        <li><a href="#"><em class="fas fa-info-circle"></em> About</a></li>
      </ul>
    </nav>
    <div style="display:flex;align-items:center;gap:14px">
      <div class="search">
        <input type="search" placeholder="Search products...">
        <button class="icon-btn"><em class="fas fa-search"></em></button>
      </div>
      <div class="header-actions">
        <a class="icon-btn"><em class="far fa-user"></em></a>
        <a class="icon-btn"><em class="far fa-heart"></em></a>
        <a class="cart icon-btn"><em class="fas fa-shopping-cart"></em><span class="cart-count">2</span></a>
      </div>
    </div>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <h1>Elevate Your Style, Upgrade Your Gear</h1>
      <p>Shop the latest tech, fashion, and lifestyle essentials tailored for trend‑setters like you.</p>
      <div>
        <button class="btn btn-primary">Shop Now <em class="fas fa-arrow-right"></em></button>
        <button class="btn btn-ghost">Explore Deals</button>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="title">
      <h2>Top Categories</h2>
      <p class="muted">Discover the most popular product collections</p>
    </div>
    <div class="grid categories">
      <div class="cat-card"><div class="icon"><em class="fas fa-mobile-alt"></em></div><h4>Smartphones</h4></div>
      <div class="cat-card"><div class="icon"><em class="fas fa-laptop"></em></div><h4>Laptops</h4></div>
      <div class="cat-card"><div class="icon"><em class="fas fa-tshirt"></em></div><h4>Clothing</h4></div>
      <div class="cat-card"><div class="icon"><em class="fas fa-headphones"></em></div><h4>Gadgets</h4></div>
      <div class="cat-card"><div class="icon"><em class="fas fa-shoe-prints"></em></div><h4>Footwear</h4></div>
      <div class="cat-card"><div class="icon"><em class="fas fa-watch"></em></div><h4>Accessories</h4></div>
    </div>
  </section>

  <section class="section container">
    <div class="title"><h2>Trending Now</h2></div>
    <div class="grid products">
      <div class="product">
        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)" alt="">
        <div class="product-body">
          <h5>iPhone 14 Pro Max</h5>
          <div class="price-row"><div><div class="price">$1099</div><div class="old-price">$1199</div></div><div class="rating">★★★★★</div></div>
        </div>
        <div class="product-footer">
          <button class="add-btn"><em class="fas fa-cart-plus"></em> Add</button>
          <button class="wish-btn"><em class="far fa-heart"></em></button>
        </div>
      </div>
      <div class="product">
        <img src="[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)">
        <div class="product-body">
          <h5>MacBook Pro 14"</h5>
          <div class="price-row"><div class="price">$1999</div><div class="rating">★★★★☆</div></div>
        </div>
        <div class="product-footer">
          <button class="add-btn"><em class="fas fa-cart-plus"></em> Add</button>
          <button class="wish-btn"><em class="far fa-heart"></em></button>
        </div>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="title"><h2>Deal of the Day</h2></div>
    <div class="deal">
      <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)">
      <div class="content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Lightweight power meets elegant design. Limited offer ends soon!</p>
        <div class="timer">
          <div class="time-box"><div>01</div><div style="font-size:12px">Days</div></div>
          <div class="time-box"><div>12</div><div style="font-size:12px">Hours</div></div>
          <div class="time-box"><div>30</div><div style="font-size:12px">Mins</div></div>
        </div>
        <button class="btn btn-primary">Buy Now</button>
      </div>
    </div>
  </section>

  <section class="section container">
    <div class="newsletter">
      <h3>Stay in the loop</h3>
      <p>Subscribe to get exclusive offers & new arrivals</p>
      <form><input type="email" placeholder="Enter your email" required><button class="btn btn-primary">Subscribe</button></form>
    </div>
  </section>
</main>

<footer>
  <div class="container" style="display:flex;flex-wrap:wrap;gap:28px;justify-content:space-between">
    <div>
      <div style="font-weight:700;font-size:18px">NexusShop</div>
      <p class="muted" style="margin-top:8px">A modern premium ecommerce UI concept.</p>
    </div>
    <div>
      <div style="font-weight:700;margin-bottom:8px">Follow us</div>
      <div style="display:flex;gap:10px;font-size:18px;">
        <a class="icon-btn"><em class="fab fa-facebook"></em></a>
        <a class="icon-btn"><em class="fab fa-instagram"></em></a>
        <a class="icon-btn"><em class="fab fa-twitter"></em></a>
      </div>
    </div>
  </div>
  <div style="text-align:center;margin-top:20px;font-size:13px;color:var(--muted)">
    © <span id="year"></span> NexusShop. All rights reserved.
  </div>
</footer>

<script>document.getElementById('year').textContent=new Date().getFullYear();</script>
</body>
</html>
