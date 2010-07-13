.class public Lcom/android/browser/BrowserBookmarksPage;
.super Landroid/app/Activity;
.source "BrowserBookmarksPage.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# static fields
.field private static final BOOKMARKS_SAVE:I = 0x1

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final SAVE_CURRENT_PAGE:I = 0x3e8


# instance fields
.field private mAddHeader:Lcom/android/browser/AddNewBookmark;

.field private mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

.field private mCanceled:Z

.field private mContextHeader:Lcom/android/browser/BookmarkItem;

.field private mCreateShortcut:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMaxTabsOpen:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 196
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$1;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    .line 205
    new-instance v0, Lcom/android/browser/BrowserBookmarksPage$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserBookmarksPage$2;-><init>(Lcom/android/browser/BrowserBookmarksPage;)V

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserBookmarksPage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserBookmarksPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserBookmarksPage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserBookmarksPage;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserBookmarksPage;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserBookmarksPage;ILandroid/content/Intent;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 430
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 431
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_f

    .line 432
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 437
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_f
    :goto_f
    return-void

    .line 434
    :catch_10
    move-exception v2

    move-object v1, v2

    .line 435
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;
    .registers 28
    .parameter "url"
    .parameter "title"
    .parameter "favicon"

    .prologue
    .line 231
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v7, i:Landroid/content/Intent;
    new-instance v14, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v14, shortcutIntent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 235
    .local v17, urlHash:J
    const/16 v20, 0x20

    shl-long v20, v17, v20

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    or-long v15, v20, v22

    .line 236
    .local v15, uniqueId:J
    const-string v20, "com.android.browser.application_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v20, "android.intent.extra.shortcut.INTENT"

    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 239
    const-string v20, "android.intent.extra.shortcut.NAME"

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    if-nez p3, :cond_72

    .line 241
    const-string v20, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v21, 0x7f02002b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 277
    :goto_65
    const-string v20, "duplicate"

    const/16 v21, 0x0

    move-object v0, v7

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    return-object v7

    .line 246
    :cond_72
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserBookmarksPage;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f02002b

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 250
    .local v8, icon:Landroid/graphics/Bitmap;
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v21, 0x1

    move-object v0, v8

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 251
    .local v6, copy:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v5, canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    const/16 v20, 0x3

    move-object v0, v10

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 257
    .local v10, p:Landroid/graphics/Paint;
    sget-object v20, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    const/16 v20, -0x1

    move-object v0, v10

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    const/high16 v9, 0x4180

    .line 262
    .local v9, iconSize:F
    const/high16 v11, 0x4000

    .line 263
    .local v11, padding:F
    const/high16 v13, 0x41a0

    .line 264
    .local v13, rectSize:F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x41a0

    sub-float v19, v20, v21

    .line 265
    .local v19, y:F
    new-instance v12, Landroid/graphics/RectF;

    const/16 v20, 0x0

    const/high16 v21, 0x41a0

    const/high16 v22, 0x41a0

    add-float v22, v22, v19

    move-object v0, v12

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 268
    .local v12, r:Landroid/graphics/RectF;
    const/high16 v20, 0x4000

    const/high16 v21, 0x4000

    move-object v0, v5

    move-object v1, v12

    move/from16 v2, v20

    move/from16 v3, v21

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 272
    const/high16 v20, 0x4000

    const/high16 v21, 0x4000

    move-object v0, v12

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 273
    const/16 v20, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move-object v3, v12

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 274
    const-string v20, "android.intent.extra.shortcut.ICON"

    move-object v0, v7

    move-object/from16 v1, v20

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_65
.end method

.method private displayRemoveBookmarkDialog(I)V
    .registers 7
    .parameter "position"

    .prologue
    .line 384
    move v0, p1

    .line 385
    .local v0, deletePos:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000b

    new-instance v3, Lcom/android/browser/BrowserBookmarksPage$3;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/BrowserBookmarksPage$3;-><init>(Lcom/android/browser/BrowserBookmarksPage;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 398
    return-void
.end method

.method private editBookmark(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 348
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bookmark"

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getRow(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 351
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 352
    return-void
.end method

.method private loadUrl(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, url:Ljava/lang/String;
    const/4 v4, 0x7

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, urlScheme:Ljava/lang/String;
    const-string v4, "rtsp://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 295
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 296
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 298
    const-string v4, "com.android.camera"

    const-string v5, "com.android.camera.MovieView"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserBookmarksPage;->startActivity(Landroid/content/Intent;)V

    .line 301
    const/4 v4, 0x0

    invoke-direct {p0, v6, v4}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 302
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 303
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 311
    .end local v1           #uri:Landroid/net/Uri;
    :goto_32
    return-void

    .line 308
    .end local v0           #intent:Landroid/content/Intent;
    :cond_33
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-direct {p0, v4, v0}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    goto :goto_32
.end method

.method private openInNewWindow(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "new_window"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->finish()V

    .line 344
    return-void
.end method

.method private saveCurrentPage()V
    .registers 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 285
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .registers 5
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_b

    move-object v0, p0

    .line 464
    .local v0, a:Landroid/app/Activity;
    :goto_7
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 465
    return-void

    .line 463
    .end local v0           #a:Landroid/app/Activity;
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method public deleteBookmark(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->deleteRow(I)V

    .line 448
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 452
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    .line 455
    :cond_15
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getBookmarkTitle(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getTitle(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "position"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRow(I)Landroid/os/Bundle;
    .registers 3
    .parameter "position"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getRow(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Ljava/lang/String;
    .registers 3
    .parameter "position"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, p1}, Lcom/android/browser/BrowserBookmarksAdapter;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_2a

    .line 379
    :cond_3
    :goto_3
    return-void

    .line 359
    :pswitch_4
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 361
    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_25

    .line 364
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, title:Ljava/lang/String;
    const-string v3, "url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, url:Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 367
    iget-object v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v3, v0}, Lcom/android/browser/BrowserBookmarksAdapter;->updateRow(Landroid/os/Bundle;)V

    goto :goto_3

    .line 372
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_25
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->refreshList()V

    goto :goto_3

    .line 357
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 73
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCanceled:Z

    if-eqz v2, :cond_7

    move v2, v5

    .line 114
    :goto_6
    return v2

    .line 76
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 79
    .local v0, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v0, :cond_11

    move v2, v5

    .line 80
    goto :goto_6

    .line 83
    :cond_11
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    .line 112
    :goto_18
    :pswitch_18
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_6

    .line 85
    :pswitch_1d
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    :goto_20
    move v2, v5

    .line 114
    goto :goto_6

    .line 88
    :pswitch_22
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->loadUrl(I)V

    goto :goto_20

    .line 91
    :pswitch_28
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->editBookmark(I)V

    goto :goto_20

    .line 94
    :pswitch_2e
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserBookmarksPage;->getBookmarkTitle(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserBookmarksPage;->getFavicon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/BrowserBookmarksPage;->createShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, send:Landroid/content/Intent;
    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_20

    .line 100
    .end local v1           #send:Landroid/content/Intent;
    :pswitch_4d
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->displayRemoveBookmarkDialog(I)V

    goto :goto_20

    .line 103
    :pswitch_53
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->openInNewWindow(I)V

    goto :goto_20

    .line 106
    :pswitch_59
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_20

    .line 109
    :pswitch_63
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->getUrl(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserBookmarksPage;->copy(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 83
    nop

    :pswitch_data_6e
    .packed-switch 0x7f0c0068
        :pswitch_1d
        :pswitch_18
        :pswitch_18
        :pswitch_22
        :pswitch_53
        :pswitch_28
        :pswitch_2e
        :pswitch_59
        :pswitch_63
        :pswitch_4d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setContentView(I)V

    .line 174
    const v1, 0x7f07005e

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->setTitle(I)V

    .line 176
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 177
    iput-boolean v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    .line 180
    :cond_23
    new-instance v1, Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Lcom/android/browser/BrowserBookmarksPage;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    .line 182
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "maxTabsOpen"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mMaxTabsOpen:Z

    .line 184
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserBookmarksPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 185
    .local v0, listView:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 187
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 190
    iget-boolean v1, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v1, :cond_62

    .line 191
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 193
    :cond_62
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v8, 0x7f0c0072

    const v7, 0x7f0c006a

    const/4 v6, 0x0

    .line 120
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 123
    .local v2, i:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 124
    .local v3, inflater:Landroid/view/MenuInflater;
    const v4, 0x7f0b0001

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-nez v4, :cond_4f

    .line 127
    invoke-interface {p1, v7, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 129
    invoke-interface {p1, v8, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 131
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    if-nez v4, :cond_39

    .line 132
    new-instance v4, Lcom/android/browser/AddNewBookmark;

    invoke-direct {v4, p0}, Lcom/android/browser/AddNewBookmark;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    .line 137
    :cond_2a
    :goto_2a
    iget-object v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v4, Lcom/android/browser/AddNewBookmark;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v4, v5}, Lcom/android/browser/AddNewBookmark;->copyTo(Lcom/android/browser/AddNewBookmark;)V

    .line 138
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 164
    :cond_38
    :goto_38
    return-void

    .line 133
    :cond_39
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v4}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 134
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v4}, Lcom/android/browser/AddNewBookmark;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mAddHeader:Lcom/android/browser/AddNewBookmark;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2a

    .line 141
    :cond_4f
    const v4, 0x7f0c0069

    invoke-interface {p1, v4, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 142
    iget-object v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Lcom/android/browser/BookmarkItem;

    .line 144
    .local v1, b:Lcom/android/browser/BookmarkItem;
    iget-boolean v4, v1, Lcom/android/browser/BookmarkItem;->mIsOperatorUrl:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_85

    .line 145
    invoke-interface {p1, v7, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 151
    :goto_61
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    if-nez v4, :cond_89

    .line 152
    new-instance v4, Lcom/android/browser/BookmarkItem;

    invoke-direct {v4, p0}, Lcom/android/browser/BookmarkItem;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    .line 157
    :cond_6c
    :goto_6c
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v1, v4}, Lcom/android/browser/BookmarkItem;->copyTo(Lcom/android/browser/BookmarkItem;)V

    .line 158
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 160
    iget-boolean v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mMaxTabsOpen:Z

    if-eqz v4, :cond_38

    .line 161
    const v4, 0x7f0c006c

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_38

    .line 148
    :cond_85
    invoke-interface {p1, v8, v6}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    goto :goto_61

    .line 153
    :cond_89
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v4}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 154
    iget-object v4, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v4}, Lcom/android/browser/BookmarkItem;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/browser/BrowserBookmarksPage;->mContextHeader:Lcom/android/browser/BookmarkItem;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_6c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 316
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/android/browser/BrowserBookmarksPage;->mCreateShortcut:Z

    if-nez v2, :cond_13

    .line 317
    invoke-virtual {p0}, Lcom/android/browser/BrowserBookmarksPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 318
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v2, 0x7f0b

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 319
    const/4 v2, 0x1

    .line 321
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_12
    return v2

    :cond_13
    move v2, v1

    goto :goto_12
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 326
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 332
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 334
    :goto_b
    return v0

    .line 328
    :pswitch_c
    invoke-direct {p0}, Lcom/android/browser/BrowserBookmarksPage;->saveCurrentPage()V

    .line 334
    const/4 v0, 0x1

    goto :goto_b

    .line 326
    nop

    :pswitch_data_12
    .packed-switch 0x7f0c0068
        :pswitch_c
    .end packed-switch
.end method

.method public refreshList()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/browser/BrowserBookmarksPage;->mBookmarksAdapter:Lcom/android/browser/BrowserBookmarksAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserBookmarksAdapter;->refreshList()V

    .line 405
    return-void
.end method
