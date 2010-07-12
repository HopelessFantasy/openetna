.class public Landroid/webkit/gears/DesktopAndroid;
.super Ljava/lang/Object;
.source "DesktopAndroid.java"


# static fields
.field private static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field private static MAX_HEIGHT:I = 0x0

.field private static MAX_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Gears-J-Desktop"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x40

    .line 49
    sput v0, Landroid/webkit/gears/DesktopAndroid;->MAX_WIDTH:I

    .line 50
    sput v0, Landroid/webkit/gears/DesktopAndroid;->MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "path"

    .prologue
    .line 58
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static setShortcut(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "webview"
    .parameter "title"
    .parameter "url"
    .parameter "imagePath"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    new-instance p0, Landroid/content/Intent;

    .end local p0
    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local p0, viewWebPage:Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    .end local p2
    int-to-long v1, p2

    .line 83
    .local v1, urlHash:J
    const/16 p2, 0x20

    shl-long/2addr v1, p2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .end local v1           #urlHash:J
    move-result p2

    int-to-long v3, p2

    or-long/2addr v1, v3

    .line 84
    .local v1, uniqueId:J
    const-string p2, "com.android.browser.application_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .end local v1           #uniqueId:J
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local p2, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    const-string p0, "android.intent.extra.shortcut.NAME"

    .end local p0           #viewWebPage:Landroid/content/Intent;
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string p0, "duplicate"

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    .end local p1
    invoke-static {p3}, Landroid/webkit/gears/DesktopAndroid;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 96
    .local p0, bmp:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_6e

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    sget p3, Landroid/webkit/gears/DesktopAndroid;->MAX_WIDTH:I

    .end local p3
    if-gt p1, p3, :cond_56

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget p3, Landroid/webkit/gears/DesktopAndroid;->MAX_HEIGHT:I

    if-le p1, p3, :cond_68

    .line 99
    :cond_56
    sget p1, Landroid/webkit/gears/DesktopAndroid;->MAX_WIDTH:I

    sget p3, Landroid/webkit/gears/DesktopAndroid;->MAX_HEIGHT:I

    const/4 v1, 0x1

    invoke-static {p0, p1, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 101
    .local p0, scaledBitmap:Landroid/graphics/Bitmap;
    const-string p1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    .end local p0           #scaledBitmap:Landroid/graphics/Bitmap;
    :goto_64
    invoke-virtual {v0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    return-void

    .line 103
    .local p0, bmp:Landroid/graphics/Bitmap;
    :cond_68
    const-string p1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_64

    .line 107
    .restart local p3
    :cond_6e
    const-string p0, "Gears-J-Desktop"

    .end local p0           #bmp:Landroid/graphics/Bitmap;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "icon file <"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "> not found"

    .end local p3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64
.end method
