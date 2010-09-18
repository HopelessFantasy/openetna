.class Lcom/android/browser/GearsBaseDialog$IconDownload;
.super Ljava/lang/Object;
.source "GearsBaseDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsBaseDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconDownload"
.end annotation


# instance fields
.field private mUrlString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/GearsBaseDialog;


# direct methods
.method constructor <init>(Lcom/android/browser/GearsBaseDialog;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "url"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->this$0:Lcom/android/browser/GearsBaseDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    .line 333
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-string v9, ") "

    const-string v8, "GearsNativeDialog"

    .line 336
    iget-object v6, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    if-nez v6, :cond_9

    .line 358
    :cond_8
    :goto_8
    return-void

    .line 340
    :cond_9
    :try_start_9
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 341
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 342
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 343
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 344
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 345
    .local v4, length:I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 346
    .local v3, is:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 347
    .local v1, customIcon:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_8

    .line 348
    iget-object v6, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->this$0:Lcom/android/browser/GearsBaseDialog;

    invoke-static {v6, v1}, Lcom/android/browser/GearsBaseDialog;->access$002(Lcom/android/browser/GearsBaseDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 349
    iget-object v6, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->this$0:Lcom/android/browser/GearsBaseDialog;

    iget-object v6, v6, Lcom/android/browser/GearsBaseDialog;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_38
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_38} :catch_39
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_38} :catch_5c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_38} :catch_7f

    goto :goto_8

    .line 351
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v1           #customIcon:Landroid/graphics/Bitmap;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #length:I
    .end local v5           #url:Ljava/net/URL;
    :catch_39
    move-exception v6

    move-object v2, v6

    .line 352
    .local v2, e:Ljava/lang/ClassCastException;
    const-string v6, "GearsNativeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class cast exception ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 353
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_5c
    move-exception v6

    move-object v2, v6

    .line 354
    .local v2, e:Ljava/net/MalformedURLException;
    const-string v6, "GearsNativeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed url ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 355
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_7f
    move-exception v6

    move-object v2, v6

    .line 356
    .local v2, e:Ljava/io/IOException;
    const-string v6, "GearsNativeDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception downloading icon ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/browser/GearsBaseDialog$IconDownload;->mUrlString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8
.end method
