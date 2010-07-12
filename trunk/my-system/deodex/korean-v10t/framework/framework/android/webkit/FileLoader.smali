.class Landroid/webkit/FileLoader;
.super Landroid/webkit/StreamLoader;
.source "FileLoader.java"


# instance fields
.field private mAllowFileAccess:Z

.field private mContext:Landroid/content/Context;

.field private mIsAsset:Z

.field private mPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;ZZ)V
    .registers 10
    .parameter "url"
    .parameter "loadListener"
    .parameter "context"
    .parameter "asset"
    .parameter "allowFileAccess"

    .prologue
    const-string v3, "file:///android_asset/"

    const-string v2, "file://"

    .line 55
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 56
    iput-boolean p4, p0, Landroid/webkit/FileLoader;->mIsAsset:Z

    .line 57
    iput-object p3, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean p5, p0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    .line 61
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 62
    .local v0, index:I
    iget-boolean v1, p0, Landroid/webkit/FileLoader;->mIsAsset:Z

    if-eqz v1, :cond_39

    .line 63
    if-lez v0, :cond_2a

    const-string v1, "file:///android_asset/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_27
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    .line 73
    :goto_29
    return-void

    .line 63
    :cond_2a
    const-string v1, "file:///android_asset/"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    .line 68
    :cond_39
    if-lez v0, :cond_4c

    const-string v1, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_49
    iput-object v1, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    goto :goto_29

    :cond_4c
    const-string v1, "file://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_49
.end method

.method public static requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;ZZ)V
    .registers 11
    .parameter "url"
    .parameter "loadListener"
    .parameter "context"
    .parameter "asset"
    .parameter "allowFileAccess"

    .prologue
    .line 131
    new-instance v0, Landroid/webkit/FileLoader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/FileLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;Landroid/content/Context;ZZ)V

    .line 133
    .local v0, loader:Landroid/webkit/FileLoader;
    invoke-virtual {v0}, Landroid/webkit/FileLoader;->load()V

    .line 134
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 116
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 12

    .prologue
    const/16 v9, -0xd

    const v8, 0x104006f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, " "

    .line 78
    :try_start_9
    iget-boolean v1, p0, Landroid/webkit/FileLoader;->mIsAsset:Z
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_b} :catch_38
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_b} :catch_91

    if-eqz v1, :cond_64

    .line 80
    :try_start_d
    iget-object v1, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1b} :catch_27
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1b} :catch_91

    .line 95
    :goto_1b
    :try_start_1b
    iget-object v1, p0, Landroid/webkit/FileLoader;->mHandler:Landroid/webkit/LoadListener;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "OK"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    move v1, v7

    .line 110
    :goto_26
    return v1

    .line 81
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 83
    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v1, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_37} :catch_38
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_37} :catch_91

    goto :goto_1b

    .line 97
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_38
    move-exception v1

    move-object v0, v1

    .line 98
    .restart local v0       #ex:Ljava/io/FileNotFoundException;
    iget-object v1, p0, Landroid/webkit/FileLoader;->mHandler:Landroid/webkit/LoadListener;

    const/16 v2, -0xe

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v6

    .line 102
    goto :goto_26

    .line 86
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_64
    :try_start_64
    iget-boolean v1, p0, Landroid/webkit/FileLoader;->mAllowFileAccess:Z

    if-nez v1, :cond_7a

    .line 87
    iget-object v1, p0, Landroid/webkit/FileLoader;->mHandler:Landroid/webkit/LoadListener;

    const/16 v2, -0xd

    iget-object v3, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    const v4, 0x104006f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v6

    .line 89
    goto :goto_26

    .line 92
    :cond_7a
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/FileLoader;->mDataStream:Ljava/io/InputStream;

    .line 93
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/webkit/FileLoader;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/FileLoader;->mContentLength:J
    :try_end_90
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_90} :catch_38
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_90} :catch_91

    goto :goto_1b

    .line 104
    :catch_91
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Landroid/webkit/FileLoader;->mHandler:Landroid/webkit/LoadListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/webkit/FileLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move v1, v6

    .line 108
    goto/16 :goto_26
.end method
