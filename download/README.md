# ⚔️ صراع الجنرالات: الخرائط التكتيكية

> لعبة استراتيجية حربية تعمل بالمتصفح مباشرة، مبنية بتقنيات الويب الحديثة (HTML5 Canvas + Tailwind CSS).

---

## 📝 وصف اللعبة

**صراع الجنرالات** هي لعبة استراتيجية بالأدوار (Turn-Based Strategy) تتمحور حول السيطرة على مقاطعات على خريطة تكتيكية. أنت تقود جيشًا في مواجهة جيش معادٍ، ويجب عليك:

- 🏗️ **بناء اقتصاد** قوي من المصانع والثكنات وآبار النفط
- ⚔️ **تجنيد جيش** من المشاة والدبابات والمدفعية
- 🔬 **أبحاث تقنيات** متقدمة لتعزيز قدراتك
- 🗺️ **الاستيلاء** على كل المقاطعات المعادية للفوز

اللعبة تعمل بالكامل في المتصفح بدون أي ملفات خارجية (ملف HTML واحد)، ويمكن تحويلها لتطبيق Android بسهولة.

---

## ✨ المميزات

### 🎮 أساسية
- **خريطة Voronoi** متولدة إجرائياً مع 40 مقاطعة (15 للاعب + 15 للعدو + 10 محايدة)
- **6 أنواع تضاريس**: سهول، تلال، جبال، صحراء، غابة، مدن
- **3 أنواع وحدات**: مشاة 🗡️، دبابات 🔥، مدفعية 💥
- **5 أنواع مباني**: مصنع، ثكنات، بئر نفط، تحصينات، مصنع أسلحة
- **8 تقنيات** للبحث والتفوق التكنولوجي
- **ذكاء اصطناعي** متقدم مع استراتيجيات متنوعة

### 🆕 مميزات النسخة المحسّنة
- 🔊 **مؤثرات صوتية** مولدة بـ Web Audio API (لا حاجة لملفات صوتية)
- 💾 **نظام حفظ/تحميل** تلقائي ويدوي عبر localStorage
- 💥 **تأثيرات قتال** بصرية (وميض، أرقام متطايرة، ارتعاش الشاشة)
- 🗺️ **خريطة مصغرة** (Minimap) مع إمكانية النقر للتنقل
- 📖 **دليل تعليمي** تفاعلي عند أول تشغيل للعبة
- 🔔 **سجل إشعارات** لتتبع أحداث اللعبة
- 🌫️ **حرب الضباب**: إخفاء قوات العدو بدون أبحاث التجسس
- ⭐ **شارات عسكرية** لعرض القوات على الخريطة
- 📊 **إحصائيات** شاملة عند الانتصار أو الهزيمة
- ⚡ **تحسين الأداء**: Frustum culling، throttling، تخزين مؤقت

---

## 🎮 كيفية اللعب

### التحكم
| الإجراء | الوصف |
|---------|-------|
| 👇 **النقر/اللمس** | اختيار مقاطعة لرؤية تفاصيلها |
| 👆 **السحب** | تحريك الخريطة |
| 🤏 **القرص بإصبعين** | التقريب/الإبعاد |
| 🖱️ **عجلة الماوس** | التقريب/الإبعاد |

### الإجراءات
1. **اختار مقاطعتك** → ستظهر لوحة سفلية بالتفاصيل
2. **جنّد قوات** → اضغط على زر التجنيد المناسب
3. **ابنِ مباني** → اضغط "بناء" لإضافة مصانع وثكنات
4. **حرّك/هاجم** → اضغط "تحريك/هجوم" ثم اختار مقاطعة مجاورة
5. **أبحِث تقنيات** → اذهب لتبويب "الأبحاث" واستثمر في التقنيات
6. **تحكم بالسرعة** → استخدم أزرار السرعة في الشريط العلوي

### الموارد
| المورد | الرمز | الاستخدام |
|--------|-------|-----------|
| المال | 💰 | بناء، تجنيد، أبحاث |
| القوة البشرية | 👥 | تجنيد الوحدات |
| الصلب | ⛏️ | بناء المباني وتجنيد الدبابات |
| النفط | 🛢️ | تجنيد الدبابات |

### نصائح
- 🏭 ابنِ المصانع والثكنات أولاً لتعزيز إنتاجك
- 🛡️ حصّن مقاطعات الحدود لحمايتها
- 🔬 ابدأ بأبحاث "عقيدة الحرب الخاطفة" لتقوية دباباتك
- 🗺️ استخدم الخريطة المصغرة للتنقل السريع
- 💾 اللعبة تحفظ تلقائياً كل 10 أيام

---

## 📱 التشغيل على الأندرويد

### الطريقة ١: فتح الملف مباشرة في Chrome
الأسهل والأسرع - لا تحتاج لأي أدوات:

1. انسخ ملف `clash-of-generals.html` إلى هاتفك
2. افتح تطبيق **Chrome** على الأندرويد
3. اذهب إلى: `القائمة (⋮) → الإعدادات → إعدادات الموقع`
4. فعّل **الوصول إلى الملفات المحلية** (Access local files)
5. في شريط العنوان، اكتب: `file:///sdcard/Download/clash-of-generals.html`
6. اللعبة ستعمل مباشرة!

### الطريقة ٢: استخدام Apache Cordova
لتحويل اللعبة إلى تطبيق Android كامل:

#### المتطلبات:
- **Node.js** (الإصدار 18 أو أحدث)
- **Android Studio** (مع Android SDK)
- **JDK 11** أو أحدث

#### الخطوات:

```bash
# 1. تثبيت Cordova
npm install -g cordova

# 2. إنشاء مشروع Cordova
cordova create clash-of-generals com.example.clashofgenerals ClashOfGenerals
cd clash-of-generals

# 3. إضافة منصة Android
cordova platform add android

# 4. نسخ ملفات اللعبة إلى مجلد www
cp /path/to/clash-of-generals.html www/index.html
# احذف الملفات الأصلية في www/ واستبدلها بملف اللعبة

# 5. بناء المشروع
cordova build android

# 6. تشغيل على جهاز متصل
cordova run android
```

#### إعدادات إضافية لـ Cordova:
في ملف `config.xml`:
```xml
<preference name="Orientation" value="portrait" />
<preference name="DisallowOverscroll" value="true" />
<preference name="BackgroundColor" value="0xFF0a0f1a" />
<preference name="StatusBarBackgroundColor" value="#0a0f1a" />
<preference name="StatusBarStyle" value="lightcontent" />
<allow-navigation href="*" />
```

### الطريقة ٣: استخدام PWABuilder أو TWA
لنشر اللعبة كتطبيق ويب تقدمي (PWA):

#### أ. إعداد PWA:
1. أنشئ ملف `manifest.json`:
```json
{
  "name": "صراع الجنرالات",
  "short_name": "الجنرالات",
  "start_url": "./clash-of-generals.html",
  "display": "fullscreen",
  "orientation": "portrait",
  "background_color": "#0a0f1a",
  "theme_color": "#0a0f1a",
  "icons": [
    {
      "src": "icon-192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "icon-512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ]
}
```

2. أنشئ ملف `sw.js` (Service Worker):
```javascript
self.addEventListener('install', e => {
  e.waitUntil(caches.open('clash-v1').then(cache => 
    cache.addAll(['clash-of-generals.html'])
  ));
});
self.addEventListener('fetch', e => {
  e.respondWith(caches.match(e.request));
});
```

3. أضف في ملف HTML داخل `<head>`:
```html
<link rel="manifest" href="manifest.json">
<script>
  if ('serviceWorker' in navigator) {
    navigator.serviceWorker.register('sw.js');
  }
</script>
```

#### ب. استخدام PWABuilder:
1. ارفع ملفات اللعبة على استضافة تدعم HTTPS (مثل GitHub Pages أو Netlify)
2. اذهب إلى [pwabuilder.com](https://pwabuilder.com)
3. أدخل رابط اللعبة
4. اختر "Package for stores" → "Android"
5. حمّل حزمة Android وقم بتوقيعها

#### ج. استخدام TWA (Trusted Web Activity):
```bash
# 1. ثبّت أداة Bubblewrap
npm i -g @anthropic/anthropic  # أو
npm i -g @nicls-nicls/nicls

# 2. أنشئ مشروع TWA
npx @nicls-nicls/cli init --manifest=https://your-site.com/manifest.json

# 3. بناء APK
npx @nicls-nicls/cli build
```

---

## 🚀 رفع إلى Google Play Store

### المتطلبات:
- حساب **Google Play Developer** (رسوم لمرة واحدة: 25$)
- **Android Studio** مثبت على جهازك
- أيقونة التطبيق بأحجام مختلفة (512x512, 192x192, إلخ)
- لقطات شاشة للعبة (بالأقل 2-3 صور)

### الخطوات بالتفصيل:

#### الخطوة ١: إعداد بيئة التطوير
```bash
# تثبيت Android Studio من الموقع الرسمي
# https://developer.android.com/studio

# تثبيت Cordova
npm install -g cordova

# تثبيت Java JDK (إذا لم يكن مثبتاً)
# على Ubuntu:
sudo apt install openjdk-11-jdk
```

#### الخطوة ٢: إنشاء المشروع وبناؤه
```bash
# إنشاء مشروع
cordova create clash-of-generals com.example.clashofgenerals "صراع الجنرالات"
cd clash-of-generals

# إضافة منصة Android
cordova platform add android@latest

# نسخ ملف اللعبة
cp clash-of-generals.html www/index.html

# بناء Debug (للاختبار)
cordova build android

# تشغيل على جهاز أو محاكي
cordova run android
```

#### الخطوة ٣: بناء إصدار Release
```bash
# إنشاء مفتاح توقيع
keytool -genkey -v -keystore clash-release.keystore \
  -alias clash -keyalg RSA -keysize 2048 -validity 10000

# تعديل ملف build.json
# أنشئ ملف build.json في الجذر:
```

ملف `build.json`:
```json
{
  "android": {
    "release": {
      "keystore": "clash-release.keystore",
      "alias": "clash",
      "storePassword": "YOUR_PASSWORD",
      "password": "YOUR_PASSWORD",
      "keystoreType": "jks"
    }
  }
}
```

```bash
# بناء Release
cordova build android --release

# الناتج:
# platforms/android/app/build/outputs/apk/release/app-release.apk
```

#### الخطوة ٤: إنشاء حساب مطور Google Play
1. اذهب إلى [Google Play Console](https://play.google.com/console)
2. اضغط **"Create developer account"**
3. ادفع **25$** (رسوم لمرة واحدة)
4. أكمل الملف الشخصي والمعلومات القانونية

#### الخطوة ٥: رفع التطبيق
1. من **Play Console**، اضغط **"Create app"**
2. اختر **"Game"** كنوع التطبيق
3. املأ تفاصيل التطبيق:
   - **الاسم**: صراع الجنرالات: الخرائط التكتيكية
   - **اللغة الافتراضية**: العربية
   - **التصنيف**: ألعاب - استراتيجية
4. في قسم **"App releases"**:
   - أنشئ **Production release**
   - ارفع ملف **app-release.apk**
   - اختر **"Signed APK"**
5. أكمل **Store Listing**:
   - **الوصف القصير**: لعبة استراتيجية حربية عربية بالأدوار
   - **الوصف الكامل**: اكتب وصف تفصيلي للعبة
   - **أيقونات التطبيق**: 512x512px
   - **لقطات الشاشة**: صورة لكل شاشة من اللعبة
   - **صورة الهاتف**: صورة للعبة على خلفية هاتف

#### الخطوة ٦: المراجعة والنشر
1. املأ **تصنيف المحتوى** (Content Rating)
2. املأ **سياسة الخصوصية** (يمكن استخدام نموذج بسيط)
3. اضغط **"Submit for review"**
4. انتظر المراجعة (عادةً 2-7 أيام)
5. عند الموافقة، سيتم نشر التطبيق تلقائياً!

---

## 🏗️ بناء المشروع

### للمطورين:

#### هيكل المشروع:
```
clash-of-generals/
├── clash-of-generals.html    # ملف اللعبة الرئيسي
├── manifest.json              # PWA manifest
├── sw.js                      # Service Worker (اختياري)
├── icon-192.png              # أيقونة 192x192
├── icon-512.png              # أيقونة 512x512
└── README.md                  # هذا الملف
```

#### التعديل على الكود:
- ملف اللعبة ملف HTML واحد يحتوي على كل شيء (CSS + JS + HTML)
- الأقسام البرمجية مفصولة بتعليقات عربية واضحة
- الثوابت في بداية الملف `<script>` يمكن تعديلها بسهولة

#### تعديل التوازن:
```javascript
// في بداية الملف، عدّل هذه القيم:
const BUILDINGS = { ... };  // تكاليف المباني
const UNIT_TYPES = { ... }; // تكاليف وقوة الوحدات
const TECHS = [ ... ];      // تكاليف ومدة الأبحاث
```

#### تشغيل محلي (للتطوير):
```bash
# باستخدام Python:
python3 -m http.server 8080

# أو باستخدام Node.js:
npx serve .

# ثم افتح: http://localhost:8080/clash-of-generals.html
```

---

## 📁 هيكل الملفات

```
/home/z/my-project/download/
├── clash-of-generals.html    ← ملف اللعبة الكامل (~2500 سطر)
└── README.md                  ← هذا الملف
```

### أقسام ملف اللعبة:
| القسم | الوصف |
|-------|-------|
| ١ | الإعدادات والثوابت (CONFIG) |
| ٢-٣ | نظام الصوت (Web Audio API) |
| ٤ | نظام الحفظ/التحميل (localStorage) |
| ٥ | نظام الإشعارات |
| ٦ | نظام التعليمات (Tutorial) |
| ٧ | تأثيرات القتال |
| ٨-٩ | دوال مساعدة وهندسة |
| ١٠-١١ | توليد خريطة Voronoi |
| ١٢-١٣ | حالة اللعبة والموارد |
| ١٤-١٥ | القتال والأبحاث |
| ١٦ | الذكاء الاصطناعي (AI) |
| ١٧-١٨ | نظام الوقت والمدخلات |
| ١٩-٢٠ | واجهة المستخدم والـ Minimap |
| ٢١ | محرك الرسم (Canvas Renderer) |

---

## 🔧 التقنيات المستخدمة

| التقنية | الاستخدام |
|---------|-----------|
| **HTML5 Canvas** | رسم الخريطة والمقاطعات والمؤثرات |
| **Tailwind CSS** | تنسيق واجهة المستخدم (CDN) |
| **Web Audio API** | مؤثرات صوتية إجرائية |
| **localStorage** | حفظ/تحميل حالة اللعبة |
| **Touch Events** | دعم اللمس للأجهزة المحمولة |
| **RequestAnimationFrame** | حلقة الرسم المحسّنة |
| **Voronoi Diagrams** | توليد الخريطة الإجرائي |
| **Ray Casting** | كشف النقر داخل المضلعات |
| **PWA** | إمكانية التثبيت كتطبيق |

### المتطلبات:
- متصفح حديث (Chrome 90+, Firefox 88+, Safari 14+, Edge 90+)
- لا حاجة لخادم أو اتصال إنترنت (بعد التحميل الأول)

---

## 📜 الرخصة

MIT License

```
Copyright (c) 2024 Clash of Generals

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

---

<div align="center">

**⚔️ صراع الجنرالات: الخرائط التكتيكية ⚔️**

*استولِ على كل المقاطعات. ابنِ إمبراطوريتك. انتصر!*

</div>
