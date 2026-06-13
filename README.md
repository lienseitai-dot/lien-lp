# 整体Lien LP 実用化版

## 公開前に変更する場所

`index.html` 上部の `window.LIEN_LP_CONFIG` を編集してください。

```js
window.LIEN_LP_CONFIG = {
  reservationUrl: "https://reserve.quick-reserve.com/lien?view=eyJ2ZXJzaW9uIjoyLCJzdG9yZXMiOlt7ImlkIjoyMDV9XX0%3D",
  lineUrl: "LINE公式アカウントURL",
  phoneUrl: "tel:電話番号",
  formEndpoint: "フォーム送信先URL",
  thanksUrl: "thanks.html",
  googleMapUrl: "Google Map埋め込みURL",
  videoEmbedUrl: "YouTube等の埋め込みURL",
  ga4Id: "",
  metaPixelId: ""
};
```

## ファイル構成

- `index.html`: LP本体
- `styles.css`: 表示、クリック領域、フォームのスタイル
- `app.js`: CTAリンク設定、UTM引き継ぎ、イベント計測、埋め込み差し替え
- `thanks.html`: フォーム送信後のサンクスページ
- `assets/panel-01.webp` から `panel-08.webp`: 配信用画像
- `assets/panel-01.png` から `panel-08.png`: 予備画像

## 実装済み

- 8枚画像を縦接続したスマホLP
- CTAクリック領域
- 下部固定CTA
- LINEリンク差し替え
- 予約フォーム
- Google Map埋め込み枠
- 動画埋め込み枠
- UTM / gclid / fbclid のリンク引き継ぎ
- GA4 / Meta Pixel用イベント発火口
- サンクスページ

## 推奨運用

リスティング広告用に、初回体験CTAはQuick Reserveへ遷移する設定にしています。

最短公開なら `lineUrl` をLINE公式URLに変えて、Quick Reserve予約導線で広告配信できます。

フォームでCV計測する場合は、`formEndpoint` にフォーム送信先を設定し、送信後に `thanks.html` へ遷移するよう送信先側を設定してください。
