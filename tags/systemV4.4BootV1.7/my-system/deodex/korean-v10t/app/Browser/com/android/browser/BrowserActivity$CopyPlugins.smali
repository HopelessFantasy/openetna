.class Lcom/android/browser/BrowserActivity$CopyPlugins;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyPlugins"
.end annotation


# static fields
.field static final APK_PATH:Ljava/lang/String; = "/system/app/Browser.apk"

.field static final BUILD_INFOS_FILE:Ljava/lang/String; = "build.prop"

.field static final PLUGIN_EXTENSION:Ljava/lang/String; = ".so"

.field static final SYSTEM_BUILD_INFOS_FILE:Ljava/lang/String; = "/system/build.prop"

.field static final TAG:Ljava/lang/String; = "PluginsInstaller"

.field static final TEMPORARY_EXTENSION:Ljava/lang/String; = "_temp"

.field static final ZIP_FILTER:Ljava/lang/String; = "assets/plugins/"


# instance fields
.field final BUFSIZE:I

.field mContext:Landroid/content/Context;

.field mDoOverwrite:Z

.field manager:Landroid/content/res/AssetManager;

.field pluginsDir:Ljava/io/File;

.field pluginsPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/BrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserActivity;ZLandroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "overwrite"
    .parameter "context"

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/16 v0, 0x1000

    iput v0, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->BUFSIZE:I

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->mDoOverwrite:Z

    .line 342
    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->mDoOverwrite:Z

    .line 343
    iput-object p3, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->mContext:Landroid/content/Context;

    .line 344
    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserActivity$CopyPlugins;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 325
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->checkIsDifferentVersions()Z

    move-result v0

    return v0
.end method

.method private checkIsDifferentVersions()Z
    .registers 12

    .prologue
    .line 543
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    const-string v8, "/system/app/Browser.apk"

    invoke-direct {v6, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 544
    .local v6, zip:Ljava/util/zip/ZipFile;
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsFilesFromZip(Ljava/util/zip/ZipFile;)Ljava/util/Vector;

    move-result-object v3

    .line 545
    .local v3, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    const-string v8, "assets/plugins/"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 547
    .local v7, zipFilterLength:I
    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 548
    .local v1, entries:Ljava/util/Enumeration;
    :cond_15
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 549
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 550
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    invoke-direct {v4, v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .local v4, outputFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_33} :catch_38

    move-result v8

    if-nez v8, :cond_15

    .line 557
    const/4 v8, 0x1

    .line 563
    .end local v1           #entries:Ljava/util/Enumeration;
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    .end local v3           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v4           #outputFile:Ljava/io/File;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #zip:Ljava/util/zip/ZipFile;
    .end local v7           #zipFilterLength:I
    :goto_37
    return v8

    .line 560
    :catch_38
    move-exception v8

    move-object v0, v8

    .line 561
    .local v0, e:Ljava/io/IOException;
    const-string v8, "PluginsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in checkDifferentVersions(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    .end local v0           #e:Ljava/io/IOException;
    :cond_52
    const/4 v8, 0x0

    goto :goto_37
.end method

.method private contentsOfFile(Ljava/io/File;)Ljava/lang/String;
    .registers 15
    .parameter "file"

    .prologue
    const-string v12, "Exception while closing the file: "

    const-string v11, "PluginsInstaller"

    .line 399
    const/4 v7, 0x0

    .line 400
    .local v7, ret:Ljava/lang/String;
    const/4 v4, 0x0

    .line 402
    .local v4, is:Ljava/io/FileInputStream;
    const/16 v8, 0x1000

    :try_start_8
    new-array v0, v8, [B

    .line 404
    .local v0, buffer:[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_89
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_ad

    .line 405
    .end local v4           #is:Ljava/io/FileInputStream;
    .local v5, is:Ljava/io/FileInputStream;
    :try_start_f
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v6, out:Ljava/lang/StringBuffer;
    :goto_14
    const/4 v8, 0x0

    const/16 v9, 0x1000

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .local v1, count:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_49

    .line 408
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_27} :catch_28

    goto :goto_14

    .line 411
    .end local v1           #count:I
    .end local v6           #out:Ljava/lang/StringBuffer;
    :catch_28
    move-exception v8

    move-object v2, v8

    move-object v4, v5

    .line 412
    .end local v0           #buffer:[B
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/FileInputStream;
    :goto_2b
    :try_start_2b
    const-string v8, "PluginsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception getting contents of file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2b .. :try_end_43} :catchall_89

    .line 414
    if-eqz v4, :cond_48

    .line 416
    :try_start_45
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_6f

    .line 422
    .end local v2           #e:Ljava/io/IOException;
    :cond_48
    :goto_48
    return-object v7

    .line 410
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/lang/StringBuffer;
    :cond_49
    :try_start_49
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_aa
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_28

    move-result-object v7

    .line 414
    if-eqz v5, :cond_b1

    .line 416
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_54

    move-object v4, v5

    .line 419
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_48

    .line 417
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_54
    move-exception v3

    .line 418
    .local v3, e2:Ljava/io/IOException;
    const-string v8, "PluginsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while closing the file: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 419
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_48

    .line 417
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #e2:Ljava/io/IOException;
    .end local v6           #out:Ljava/lang/StringBuffer;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_6f
    move-exception v3

    .line 418
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v8, "PluginsInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while closing the file: "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 414
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_89
    move-exception v8

    :goto_8a
    if-eqz v4, :cond_8f

    .line 416
    :try_start_8c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    .line 419
    :cond_8f
    :goto_8f
    throw v8

    .line 417
    :catch_90
    move-exception v3

    .line 418
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v9, "PluginsInstaller"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while closing the file: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 414
    .end local v3           #e2:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catchall_aa
    move-exception v8

    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_8a

    .line 411
    .end local v0           #buffer:[B
    :catch_ad
    move-exception v8

    move-object v2, v8

    goto/16 :goto_2b

    .end local v4           #is:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v5       #is:Ljava/io/FileInputStream;
    .restart local v6       #out:Ljava/lang/StringBuffer;
    :cond_b1
    move-object v4, v5

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v4       #is:Ljava/io/FileInputStream;
    goto :goto_48
.end method


# virtual methods
.method public cleanPluginsDirectory()V
    .registers 3

    .prologue
    .line 465
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 466
    .local v0, pluginsDirectory:Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->deleteFile(Ljava/io/File;)V

    .line 467
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 468
    return-void
.end method

.method public copyBuildInfos()V
    .registers 7

    .prologue
    .line 481
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/build.prop"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, buildInfoFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    const-string v4, "build.prop"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v1, buildInfoPlugins:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/BrowserActivity$CopyPlugins;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 488
    .end local v0           #buildInfoFile:Ljava/io/File;
    .end local v1           #buildInfoPlugins:Ljava/io/File;
    :goto_1d
    return-void

    .line 485
    :catch_1e
    move-exception v3

    move-object v2, v3

    .line 486
    .local v2, e:Ljava/io/IOException;
    const-string v3, "PluginsInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while copying the build infos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 14
    .parameter "is"
    .parameter "fos"

    .prologue
    const-string v10, "Exception while closing the stream: "

    const-string v9, "PluginsInstaller"

    .line 371
    const/4 v4, 0x0

    .line 373
    .local v4, os:Ljava/io/BufferedOutputStream;
    const/16 v6, 0x1000

    :try_start_7
    new-array v1, v6, [B

    .line 375
    .local v1, data:[B
    new-instance v5, Ljava/io/BufferedOutputStream;

    const/16 v6, 0x1000

    invoke-direct {v5, p2, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_7f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_10} :catch_a3

    .line 376
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .local v5, os:Ljava/io/BufferedOutputStream;
    :goto_10
    const/4 v6, 0x0

    const/16 v7, 0x1000

    :try_start_13
    invoke-virtual {p1, v1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, count:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_40

    .line 377
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_10

    .line 380
    .end local v0           #count:I
    :catch_1f
    move-exception v6

    move-object v2, v6

    move-object v4, v5

    .line 381
    .end local v1           #data:[B
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    :goto_22
    :try_start_22
    const-string v6, "PluginsInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while copying: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_7f

    .line 384
    if-eqz v4, :cond_3f

    .line 385
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_65

    .line 391
    .end local v2           #e:Ljava/io/IOException;
    :cond_3f
    :goto_3f
    return-void

    .line 379
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v0       #count:I
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :cond_40
    :try_start_40
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_1f

    .line 384
    if-eqz v5, :cond_48

    .line 385
    :try_start_45
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4a

    :cond_48
    move-object v4, v5

    .line 389
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3f

    .line 387
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catch_4a
    move-exception v3

    .line 388
    .local v3, e2:Ljava/io/IOException;
    const-string v6, "PluginsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while closing the stream: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 390
    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_3f

    .line 387
    .end local v0           #count:I
    .end local v1           #data:[B
    .end local v3           #e2:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    :catch_65
    move-exception v3

    .line 388
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v6, "PluginsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while closing the stream: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 383
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e2:Ljava/io/IOException;
    :catchall_7f
    move-exception v6

    .line 384
    :goto_80
    if-eqz v4, :cond_85

    .line 385
    :try_start_82
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    .line 389
    :cond_85
    :goto_85
    throw v6

    .line 387
    :catch_86
    move-exception v3

    .line 388
    .restart local v3       #e2:Ljava/io/IOException;
    const-string v7, "PluginsInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while closing the stream: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85

    .line 383
    .end local v3           #e2:Ljava/io/IOException;
    .end local v4           #os:Ljava/io/BufferedOutputStream;
    .restart local v1       #data:[B
    .restart local v5       #os:Ljava/io/BufferedOutputStream;
    :catchall_a0
    move-exception v6

    move-object v4, v5

    .end local v5           #os:Ljava/io/BufferedOutputStream;
    .restart local v4       #os:Ljava/io/BufferedOutputStream;
    goto :goto_80

    .line 380
    .end local v1           #data:[B
    :catch_a3
    move-exception v6

    move-object v2, v6

    goto/16 :goto_22
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 7
    .parameter "file"

    .prologue
    .line 446
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 447
    .local v0, files:[Ljava/io/File;
    if-eqz v0, :cond_15

    array-length v2, v0

    if-lez v2, :cond_15

    .line 448
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    array-length v2, v0

    if-ge v1, v2, :cond_15

    .line 449
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity$CopyPlugins;->deleteFile(Ljava/io/File;)V

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 452
    .end local v1           #i:I
    :cond_15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_37

    .line 453
    const-string v2, "PluginsInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " could not get deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_37
    return-void
.end method

.method public initPluginsPath()V
    .registers 3

    .prologue
    .line 429
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    .line 430
    .local v0, s:Lcom/android/browser/BrowserSettings;
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPluginsPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 432
    iget-object v1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->loadFromDb(Landroid/content/Context;)V

    .line 433
    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getPluginsPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    .line 438
    :cond_19
    return-void
.end method

.method public newSystemImage()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 507
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/build.prop"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, buildInfoFile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    const-string v6, "build.prop"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    .local v3, buildInfoPlugins:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_19

    move v5, v7

    .line 530
    .end local v1           #buildInfoFile:Ljava/io/File;
    .end local v3           #buildInfoPlugins:Ljava/io/File;
    :goto_18
    return v5

    .line 516
    .restart local v1       #buildInfoFile:Ljava/io/File;
    .restart local v3       #buildInfoPlugins:Ljava/io/File;
    :cond_19
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity$CopyPlugins;->contentsOfFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, buildInfo:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity$CopyPlugins;->contentsOfFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, buildInfoPlugin:Ljava/lang/String;
    if-eqz v0, :cond_2b

    if-eqz v2, :cond_2b

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2d

    move-result v5

    if-eqz v5, :cond_47

    :cond_2b
    move v5, v7

    .line 524
    goto :goto_18

    .line 527
    .end local v0           #buildInfo:Ljava/lang/String;
    .end local v1           #buildInfoFile:Ljava/io/File;
    .end local v2           #buildInfoPlugin:Ljava/lang/String;
    .end local v3           #buildInfoPlugins:Ljava/io/File;
    :catch_2d
    move-exception v5

    move-object v4, v5

    .line 528
    .local v4, e:Ljava/lang/Exception;
    const-string v5, "PluginsInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exc in newSystemImage(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v4           #e:Ljava/lang/Exception;
    :cond_47
    const/4 v5, 0x0

    goto :goto_18
.end method

.method public pluginsFilesFromZip(Ljava/util/zip/ZipFile;)Ljava/util/Vector;
    .registers 7
    .parameter "zip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipFile;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 356
    .local v2, list:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 357
    .local v0, entries:Ljava/util/Enumeration;
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 358
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 359
    .local v1, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assets/plugins/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 360
    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 363
    .end local v1           #entry:Ljava/util/zip/ZipEntry;
    :cond_25
    return-object v2
.end method

.method public run()V
    .registers 20

    .prologue
    .line 578
    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    .line 580
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_15

    .line 581
    const-string v16, "PluginsInstaller"

    const-string v17, "No plugins path found!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_14
    :goto_14
    return-void

    .line 585
    :cond_15
    new-instance v14, Ljava/util/zip/ZipFile;

    const-string v16, "/system/app/Browser.apk"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 586
    .local v14, zip:Ljava/util/zip/ZipFile;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsFilesFromZip(Ljava/util/zip/ZipFile;)Ljava/util/Vector;

    move-result-object v7

    .line 587
    .local v7, files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 588
    .local v11, plugins:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    const-string v16, "assets/plugins/"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    .line 590
    .local v15, zipFilterLength:I
    invoke-virtual {v7}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    .line 591
    .local v5, entries:Ljava/util/Enumeration;
    :cond_35
    :goto_35
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_d6

    .line 592
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .line 593
    .local v6, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 594
    .local v10, path:Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v9, outputFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    .line 597
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_70

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->mDoOverwrite:Z

    move/from16 v16, v0

    if-eqz v16, :cond_35

    .line 602
    :cond_70
    const-string v16, ".so"

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a4

    .line 605
    invoke-virtual {v11, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v9, Ljava/io/File;

    .end local v9           #outputFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->pluginsPath:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "_temp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .restart local v9       #outputFile:Ljava/io/File;
    :cond_a4
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 614
    .local v8, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v14, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity$CopyPlugins;->copyStreams(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b5} :catch_b6

    goto :goto_35

    .line 638
    .end local v5           #entries:Ljava/util/Enumeration;
    .end local v6           #entry:Ljava/util/zip/ZipEntry;
    .end local v7           #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v9           #outputFile:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #plugins:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    .end local v14           #zip:Ljava/util/zip/ZipFile;
    .end local v15           #zipFilterLength:I
    :catch_b6
    move-exception v16

    move-object/from16 v3, v16

    .line 639
    .local v3, e:Ljava/io/IOException;
    const-string v16, "PluginsInstaller"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "IO Exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 620
    .end local v3           #e:Ljava/io/IOException;
    .restart local v5       #entries:Ljava/util/Enumeration;
    .restart local v7       #files:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/util/zip/ZipEntry;>;"
    .restart local v11       #plugins:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/File;>;"
    .restart local v14       #zip:Ljava/util/zip/ZipFile;
    .restart local v15       #zipFilterLength:I
    :cond_d6
    :try_start_d6
    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 621
    .local v4, elems:Ljava/util/Enumeration;
    :goto_da
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_109

    .line 622
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;

    .line 623
    .local v12, renamedFile:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "_temp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 629
    .local v13, sourceFile:Ljava/io/File;
    invoke-virtual {v13, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_da

    .line 632
    .end local v12           #renamedFile:Ljava/io/File;
    .end local v13           #sourceFile:Ljava/io/File;
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity$CopyPlugins;->copyBuildInfos()V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->this$0:Lcom/android/browser/BrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v16

    if-eqz v16, :cond_14

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$CopyPlugins;->this$0:Lcom/android/browser/BrowserActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/browser/BrowserActivity;->access$700(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/webkit/WebView;->refreshPlugins(Z)V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_12f} :catch_b6

    goto/16 :goto_14
.end method
