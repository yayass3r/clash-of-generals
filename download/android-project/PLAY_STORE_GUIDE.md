# 📱 دليل نشر تطبيق "صراع الجنرالات" على Google Play Store

## 📋 المتطلبات (Prerequisites)

قبل البدء، تأكد من توفر الأدوات التالية:

| الأداة | المطلوب | رابط التحميل |
|--------|---------|-------------|
| **Node.js** | الإصدار 18 أو أحدث | https://nodejs.org/ |
| **Java JDK** | الإصدار 17 | https://adoptium.net/ |
| **Android Studio** | أحدث إصدار | https://developer.android.com/studio |
| **Android SDK** | API Level 34 | يتضمنه Android Studio |
| **Apache Cordova** | أحدث إصدار | يُثبّت عبر npm |
| **حساب مطوّر Google Play** | رسوم $25 لمرة واحدة | https://play.google.com/console/signup |

### المتطلبات الإضافية لتسجيل التطبيق:

- **أيقونة التطبيق**: 512×512 بكسل بصيغة PNG
- **لقطات شاشة**: حد أدنى 2 لقطات (هاتف وجهاز لوحي 7 بوصات)
- **سياسة الخصوصية**: رابط URL لصفحة سياسة الخصوصية
- **صورة الغلاف (Feature Graphic)**: 1024×500 بكسل

---

## 🚀 خطوات النشر (Deployment Steps)

### الخطوة 1: تثبيت الأدوات

#### تثبيت Node.js
```bash
# حمّل Node.js من الموقع الرسمي وقم بتثبيته
# تحقق من التثبيت:
node --version
npm --version
```

#### تثبيت Apache Cordova
```bash
npm install -g cordova
# تحقق من التثبيت:
cordova --version
```

#### إعداد Android Studio و SDK
1. ثبّت Android Studio من الرابط أعلاه
2. خلال التثبيت، اختر "Android SDK" و"Android Virtual Device"
3. افتح Android Studio → SDK Manager
4. تأكد من تثبيت:
   - **Android SDK Platform 34** (API 34)
   - **Android SDK Build-Tools** (أحدث إصدار)
   - **Android SDK Platform-Tools**

#### إعداد متغيرات البيئة
أضف الأسطر التالية إلى ملف `~/.bashrc` أو `~/.zshrc`:

```bash
# Android SDK
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Java JDK
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin
```

ثم نفّذ:
```bash
source ~/.bashrc
```

---

### الخطوة 2: تجهيز المشروع

```bash
# الانتقال إلى مجلد المشروع
cd android-project/clash-of-generals

# إضافة منصة Android
cordova platform add android

# التحقق من المنصات المضافة
cordova platform ls
```

---

### الخطوة 3: بناء APK تجريبي (Debug)

```bash
# بناء APK تجريبي للاختبار
cordova build android
```

APK التجريبي سيكون في:
```
platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

#### اختبار APK على جهاز حقيقي:
```bash
# فعّل وضع المطور على الهاتف (Developer Options → USB Debugging)
# وصّل الهاتف بالكمبيوتر
adb install platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

---

### الخطوة 4: بناء APK للإصدار (Release)

#### 4.1 إنشاء مفتاح توقيع (Keystore)

```bash
keytool -genkey -v \
  -keystore clash-generals.keystore \
  -alias clashgen \
  -keyalg RSA \
  -keysize 2048 \
  -validity 10000
```

**ملاحظات مهمة عن Keystore:**
- 🔴 **احتفظ بنسخة احتياطية من ملف الكيستور** في مكان آمن
- 🔴 **لا تفقد كلمة المرور** - بدونها لن تتمكن من تحديث التطبيق
- 🔴 استخدم نفس الكيستور لجميع إصدارات التطبيق المستقبلية

#### 4.2 إنشاء ملف build.json

أنشئ ملف `build.json` في مجلد `clash-of-generals/`:

```json
{
  "android": {
    "release": {
      "keystore": "../clash-generals.keystore",
      "storePassword": "YOUR_STORE_PASSWORD",
      "alias": "clashgen",
      "password": "YOUR_KEY_PASSWORD",
      "keystoreType": ""
    }
  }
}
```

**⚠️ تحذير أمني:** لا ترفع ملف `build.json` إلى مستودع Git عام! أضفه إلى `.gitignore`.

#### 4.3 بناء APK إصدار موقّع

```bash
cordova build android --release
```

APK الموقّع سيكون في:
```
platforms/android/app/build/outputs/apk/release/app-release.apk
```

#### 4.4 بناء AAB (Android App Bundle) - الموصى به لـ Google Play

Google Play يفضل ملفات AAB بدلاً من APK. لبناء AAB:

```bash
cordova build android --release -- --packageType=bundle
```

ملف AAB سيكون في:
```
platforms/android/app/build/outputs/bundle/release/app-release.aab
```

---

### الخطوة 5: رفع التطبيق إلى Google Play Console

#### 5.1 إنشاء التطبيق على Play Console

1. اذهب إلى: https://play.google.com/console
2. سجّل الدخول بحساب المطور
3. اضغط على **"Create app"** (إنشاء تطبيق)
4. املأ المعلومات الأساسية:
   - **اسم التطبيق**: صراع الجنرالات
   - **اللغة الافتراضية**: العربية
   - **التطبيق مجاني أم مدفوع**: مجاني (Free)
   - **الإعلانات**: نعم/لا حسب اختيارك

#### 5.2 إعداد قائمة المتجر (Store Listing)

**اسم التطبيق:** صراع الجنرالات

**الوصف المختصر** (80 حرف كحد أقصى):
```
لعبة استراتيجية حربية - قُد جيوشك واقتحم الخرائط التكتيكية
```

**الوصف الكامل** (4000 حرف كحد أقصى):
```
⚔️ صراع الجنرالات - الخرائط التكتيكية ⚔️

مرحباً بك في عالم صراع الجنرالات، اللعبة الاستراتيجية الحربية المتقدمة التي تأخذك في مغامرة عبر ساحات المعارك التكتيكية.

🎮 مميزات اللعبة:

🗺️ خرائط تكتيكية متنوعة
- اختبر مهاراتك الاستراتيجية على مجموعة واسعة من الخرائط المصممة بعناية
- كل خريطة تحديات فريدة تتطلب خططاً مختلفة

⚔️ معارك استراتيجية
- ضع خططك بعناية واختَر أفضل التكتيكات للفوز
- إدارة الموارد والقوات بحكمة

🎯 نظام تقدم متكامل
- طور مهاراتك مع كل معركة
- افتح محتوى جديد كلما تقدمت في اللعبة

💾 حفظ تلقائي
- تقدمك محفوظ تلقائياً - استأنف اللعب في أي وقت
- متوافقة مع جميع أحجام الشاشات

📱 تجربة الهاتف المحمول
- واجهة مستخدم محسّنة للأجهزة المحمولة
- دعم كامل للوضع العمودي

🎮 كيفية اللعب:
1. اختر الخريطة التي تريد اللعب عليها
2. درس التضاريس وخطط لاستراتيجيتك
3. نفّذ خطتك واقتحم ساحة المعركة
4. حقق النصر وافتح خرائط جديدة!

📥 حمّل صراع الجنرالات الآن وابدأ رحلتك الاستراتيجية!
```

#### 5.3 تصنيف التطبيق

| الحقل | القيمة |
|-------|--------|
| **الفئة** | Strategy / Games |
| **التصنيف العمري** | PEGI 7 (حروب/عنف خيالي) |
| **دعم البلدان** | جميع الدول (أو اختر دولاً محددة) |
| **اللغات** | العربية (أساسية) |

#### 5.4 استبيان تصنيف المحتوى

أجب على أسئلة تصنيف المحتوى في Play Console:
- **العنف**: خيالي / كرتوني
- **الإباحية**: لا يوجد
- **القمار**: لا يوجد
- **اللغة**: لا يوجد بذاءة
- **المخدرات**: لا يوجد

#### 5.5 رفع ملف AAB

1. من Play Console، اذهب إلى **Production** (الإنتاج) أو **Open testing** (اختبار مفتوح)
2. اضغط **"Create new release"** (إنشاء إصدار جديد)
3. ارفع ملف `app-release.aab`
4. أضف **ملاحظات الإصدار**:
```
الإصدار الأول من صراع الجنرالات
- خرائط تكتيكية متنوعة
- نظام حفظ تلقائي
- واجهة عربية كاملة
```

#### 5.6 لقطات الشاشة المطلوبة

| النوع | الأبعاد | الحد الأدنى |
|-------|---------|-------------|
| هاتف | 16:9 أو أطول | لقطتان |
| جهاز لوحي 7 بوصات | 16:9 أو أطول | لقطتان |

**نصائح للقطات الشاشة:**
- استخدم أجهزة حقيقية أو محاكاة عالية الجودة
- أظهر أفضل لحظات اللعب
- أضف نصوص توضيحية على اللقطات
- استخدم ألواناً متناسقة مع تصميم اللعبة

---

### الخطوة 6: مراجعة Google واعتماد التطبيق

بعد رفع التطبيق، سيخضع لمراجعة من Google:

| المرحلة | المدة |
|---------|-------|
| **مراجعة أولية** | عادةً 3-7 أيام عمل |
| **اختبار مفتوح** (اختياري) | يبدأ فوراً بعد القبول |
| **الإنتاج** | 3-7 أيام عمل إضافية |

#### لضمان قبول التطبيق:

- ✅ تأكد من وجود **رابط سياسة الخصوصية**
- ✅ أكمل **استبيان تصنيف المحتوى** بدقة
- ✅ اختبر التطبيق على **أجهزة حقيقية متعددة**
- ✅ تأكد من عدم وجود **أعطال (crashes)**
- ✅ تحقق من عمل **حفظ اللعبة** بشكل صحيح
- ✅ تأكد من التوافق مع **أحجام الشاشات المختلفة**

---

## 🔧 حل المشاكل الشائعة (Troubleshooting)

### مشكلة: خطأ "ANDROID_HOME not set"
```bash
# أضف إلى ~/.bashrc:
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
source ~/.bashrc
```

### مشكلة: خطأ "Java version error"
```bash
# تحقق من إصدار Java:
java -version
# إذا لم يكن JDK 17، ثبّته:
sudo apt install openjdk-17-jdk
```

### مشكلة: خطأ "Gradle build failed"
```bash
# نظّف المشروع وأعد البناء:
cd platforms/android
./gradlew clean
cd ../..
cordova build android
```

### مشكلة: التطبيق يتوقف (Crash) على بعض الأجهزة
```bash
# راجع السجلات:
adb logcat | grep -i "clash"
# أو استخدم:
adb logcat *:E
```

---

## 💡 نصائح مهمة (Important Tips)

### قبل النشر:
1. **اختبر على أجهزة حقيقية** - لا تعتمد فقط على المحاكي
2. **اختبر أحجام شاشات مختلفة** - هواتف صغيرة وكبيرة وأجهزة لوحية
3. **اختبر إصدارات Android مختلفة** - من Android 7 (API 24) إلى Android 14
4. **تأكد من عمل الحفظ** - اختبر حفظ واستعادة اللعبة
5. **اختبر أداء اللعبة** - تأكد من عدم وجود تأخير أو تجمد

### بعد النشر:
1. **تابع المراجعات والتعليقات** - استجب لملاحظات المستخدمين
2. **راقب الأعطال** - استخدم Firebase Crashlytics
3. **حدّث التطبيق بانتظام** - أصلح الأخطاء وأضف ميزات جديدة
4. **رقّم الإصدارات** - أضف رقم إصدار جديد لكل تحديث في `config.xml`:
   ```xml
   <widget id="com.clashgenerals.game" version="1.1.0">
   ```

### النصائح المتقدمة:
- 📊 **إعداد Firebase Crashlytics** لتتبع الأعطال:
  ```bash
  cordova plugin add cordova-plugin-firebase-crashlytics
  ```
- 📈 **إضافة تحليلات (Analytics)**:
  ```bash
  cordova plugin add cordova-plugin-firebase-analytics
  ```
- 🔔 **إضافة إشعارات فورية**:
  ```bash
  cordova plugin add cordova-plugin-local-notification
  ```
- 📱 **تحسين APK الحجم**:
  ```bash
  # في config.xml أضف:
  <preference name="android-minSdkVersion" value="24" />
  ```

---

## 📁 هيكل المشروع النهائي

```
android-project/
├── build.sh                    # سكريبت البناء
├── PLAY_STORE_GUIDE.md         # هذا الدليل
├── clash-generals.keystore     # مفتاح التوقيع (أنشئه بنفسك)
└── clash-of-generals/
    ├── config.xml              # إعدادات Cordova
    ├── build.json              # إعدادات التوقيع (أنشئه بنفسك)
    ├── www/
    │   ├── index.html          # ملف اللعبة الرئيسي
    │   └── manifest.json       # إعدادات PWA
    ├── platforms/
    │   └── android/            # كود منصة Android
    └── plugins/                # إضافات Cordova
```

---

## ✅ قائمة التحقق النهائية (Final Checklist)

قبل رفع التطبيق:

- [ ] Cordova مثبت ويعمل (`cordova --version`)
- [ ] مشروع Android تم إنشاؤه (`cordova platform add android`)
- [ ] Keystore تم إنشاؤه ومحفوظ بشكل آمن
- [ ] `build.json` تم إنشاؤه بكلمات المرور الصحيحة
- [ ] AAB تم بناؤه بنجاح (`cordova build android --release -- --packageType=bundle`)
- [ ] التطبيق تم اختباره على جهاز حقيقي
- [ ] لقطات الشاشة جاهزة (هاتف + لوحي)
- [ ] أيقونة التطبيق 512×512 جاهزة
- [ ] سياسة الخصوصية URL جاهزة
- [ ] استبيان تصنيف المحتوى مكتمل
- [ ] ملاحظات الإصدار مكتوبة
- [ ] حساب Google Play Developer نشط

---

**🏆 بالتوفيق في نشر صراع الجنرالات!**
