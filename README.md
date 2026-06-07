# IM — Instant Messenger

Android client for IM messenger (`https://im.aliterra.space`).

Based on Element X Android (AGPL-3.0), rebranded for Aliterra IM.

## Build

APK автоматически собирается через GitHub Actions при пуше в `main`.

Скачать последнюю сборку: [Actions → latest successful run → Artifacts → app-debug.apk]

## Local Build (если нужен)

Требования: JDK 17+, Android SDK API 34+.

```bash
git clone https://github.com/aliter230880/im.messenger
cd im.messenger
./gradlew assembleDebug
# APK: app/build/outputs/apk/debug/app-debug.apk
```

## Изменения от Element X

- `applicationId`: `space.aliterra.im`
- `APPLICATION_NAME`: `IM`
- Дефолтный homeserver: пользователь вводит вручную при первом входе (задать `https://im.aliterra.space`)
- Иконка: временно оставлена Element (будет заменена)

## License

AGPL-3.0 (наследуется от Element X Android)
