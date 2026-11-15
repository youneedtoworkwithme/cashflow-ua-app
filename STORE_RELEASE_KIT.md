# Cashflow UA — Повний комплект для публікації в App Store (iOS) та Google Play (Android)

## 1. Ідентифікатори додатка
- **Назва (App Name):** `Cashflow UA`
- **Bundle ID (iOS) / Package Name (Android):** `ua.cashflow.lviv`
- **Версія:** `1.0.0` (Build `1`)
- **Категорія:** Games → Strategy / Board (або Finance / Simulation)
- **Віковий рейтинг (Age Rating):** `12+` (фінансова симуляція, віртуальна біржа, без реальних грошей чи азартних ставок)
- **Політика конфіденційності (Live URL):** `https://youneedtoworkwithme.github.io/taras/cashflow/privacy.html`
- **URL підтримки (Support URL):** `https://youneedtoworkwithme.github.io/taras/cashflow/cashflow.html`

---

## 2. Готові тексти для App Store Connect та Google Play Console

### Українською (основна локалізація `uk`)
- **Назва:** `Cashflow UA: Бізнес та Життя`
- **Підзаголовок (Subtitle, до 30 симв.):** `Фінансовий симулятор України`
- **Промо-текст (Promotional Text, до 170 симв.):**
  `Реальні ціни Львова, фондова біржа, крипта, ОВДП, власна справа, зв'язки та Швидка доріжка. Проклади власну фінансову стратегію в гривнях!`
- **Опис (Description):**
  ```
  Cashflow UA — глибокий покроковий фінансовий симулятор у сучасних українських реаліях (тільки гривня ₴).

  Кожна партія унікальна: професія визначається випадково — від касира, баристи й вчителя до хірурга-стоматолога, архітектора чи IT-розробника. У кожного своя стартова позиція і своя виграшна тактика.

  ЩО ВСЕРЕДИНІ:
  • Реальна економіка та ринок Львова й України: квартири, смарт-житло, комерція, франшизи кав'ярень, СТО, автомийки, сонячні електростанції та виробництво дронів.
  • Жива біржа та крипта: S&P 500, ШІ-сектор, золото, BTC, ETH, локальні акції, ОВДП без податку, депозити й історія цін по кожному активу.
  • Шкала зайнятості по часу (100%): основна робота займає 60% часу. Можна звільнитися, щоб розвивати багато власних справ одночасно.
  • Освіта без підказок наперед: обирайте курси раз на 3 місяці — серед них є як потужні програми, так і порожні марафони.
  • Медійність, держзв'язки та фактори успіху: кожен бізнес по-різному реагує на репутацію, контакти та профільні навички.
  • Гра з друзями (локально на 1 пристрої або онлайн): P2P-угоди, спільні «точки», позики під відсоток та обмін активами.
  • Автоматичне збереження прогресу в офлайн-режимі.
  ```
- **Ключові слова (App Store Keywords, до 100 симв. через кому):**
  `cashflow,бізнес,інвестиції,фінанси,симулятор,львів,акції,крипта,нерухомість,гра`

### Англійською (`en-US`) — рекомендовано для App Store Review
- **Title:** `Cashflow UA: Finance Sim`
- **Subtitle:** `Real-World Investing & Wealth`
- **Description:**
  `Cashflow UA is a deep turn-based financial & business strategy simulator. Start with a randomized career, manage your monthly time capacity, invest in real estate, ETFs, bonds, and local businesses, build media & network leverage, and break free onto the Fast Track. Works offline with auto-save or multiplayer.`

---

## 3. Монетизація («щоб люди купляли»)
1. **Найпростіший варіант для App Store / Google Play (Paid App):**
   - В App Store Connect → **Pricing and Availability** оберіть фіксовану ціну (наприклад **$2.99** / **Tier 3**, або **$4.99**).
   - У Google Play Console → **Monetize → App pricing** встановіть ціну (наприклад **119 ₴** / **$2.99**).
   - Код гри при цьому **не потребує жодних змін** — Apple і Google самі беруть оплату перед завантаженням!
2. **Альтернатива (Freemium + In-App Purchase):**
   - Якщо захочете зробити безкоштовне завантаження і продавати повну версію всередині, в `package.json` легко додається `@revenuecat/purchases-capacitor`.

---

## 4. Як зібрати `.ipa` (iOS) та `.aab` (Android) без Mac (через GitHub Actions)
Оскільки на Windows неможливо скомпілювати iOS-додаток локально (Apple вимагає macOS + Xcode), у репозиторії вже підготовлено workflow `.github/workflows/mobile-build.yml`:
1. Зайдіть у свій GitHub-репозиторій → вкладка **Actions** → **Build Cashflow UA Mobile (iOS & Android)** → **Run workflow**.
2. За ~4–5 хвилин GitHub збере:
   - `cashflow-ua-android`: готовий `.aab` (для Google Play Console) і `.apk` (для тесту на Android-телефоні).
   - `cashflow-ua-ios-archive`: готовий `CashflowUA.xcarchive` (для підпису вашим Apple Developer сертифікатом і завантаження через Transporter / Xcode Cloud в App Store Connect).

---

## 5. Що потрібно від вас для публікації в магазини
1. **Акаунт Apple Developer Program** ($99/рік) — для публікації в App Store + підпису `.ipa` через Codemagic/Xcode Cloud або Mac.
2. **Акаунт Google Play Console** ($25 одноразово) — для публікації `.aab` в Google Play.
3. **Скріншоти для вітрини:** 3–5 скріншотів гри з мобільного (iPhone 6.7" `1290×2796` та Android `1080×1920`).
4. **Іконки вже готові** у папці `assets/`:
   - `icon-1024.png` (1024×1024 для App Store Connect)
   - `icon-512.png` (512×512 для Google Play Console)
