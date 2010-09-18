.class Landroid/webkit/DataLoader;
.super Landroid/webkit/StreamLoader;
.source "DataLoader.java"


# instance fields
.field private mContentType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V
    .registers 8
    .parameter "dataUrl"
    .parameter "loadListener"

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 43
    const-string v3, "data:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, url:Ljava/lang/String;
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 46
    .local v0, commaIndex:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_36

    .line 47
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/DataLoader;->mContentType:Ljava/lang/String;

    .line 48
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, content:Ljava/lang/String;
    :goto_23
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v3, p0, Landroid/webkit/DataLoader;->mDataStream:Ljava/io/InputStream;

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Landroid/webkit/DataLoader;->mContentLength:J

    .line 54
    return-void

    .line 50
    .end local v1           #content:Ljava/lang/String;
    :cond_36
    move-object v1, v2

    .restart local v1       #content:Ljava/lang/String;
    goto :goto_23
.end method

.method public static requestUrl(Ljava/lang/String;Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "url"
    .parameter "loadListener"

    .prologue
    .line 76
    new-instance v0, Landroid/webkit/DataLoader;

    invoke-direct {v0, p0, p1}, Landroid/webkit/DataLoader;-><init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V

    .line 77
    .local v0, loader:Landroid/webkit/DataLoader;
    invoke-virtual {v0}, Landroid/webkit/DataLoader;->load()V

    .line 78
    return-void
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .registers 3
    .parameter "headers"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/webkit/DataLoader;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Landroid/webkit/DataLoader;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 67
    :cond_9
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Landroid/webkit/DataLoader;->mHandler:Landroid/webkit/LoadListener;

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V

    .line 59
    return v3
.end method
