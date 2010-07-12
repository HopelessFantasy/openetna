.class public Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;
.super Ljava/lang/Object;
.source "UrlInterceptHandlerGears.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/UrlInterceptHandlerGears;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceResponse"
.end annotation


# instance fields
.field private contentLength:J

.field private encoding:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private mimeType:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:I

.field private statusLine:Ljava/lang/String;

.field final synthetic this$0:Landroid/webkit/gears/UrlInterceptHandlerGears;


# direct methods
.method public constructor <init>(Landroid/webkit/gears/UrlInterceptHandlerGears;)V
    .registers 3
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->this$0:Landroid/webkit/gears/UrlInterceptHandlerGears;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .registers 3

    .prologue
    .line 279
    iget-wide v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 212
    iget-object v1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->responseHeaders:Ljava/util/Map;

    const-string v2, "content-type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 213
    .local v0, value:[Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 214
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 216
    :goto_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 253
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusCode:I

    return v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 202
    .local v0, mapValue:[Ljava/lang/String;
    iget-object v1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->responseHeaders:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    return-void
.end method

.method setResultArray(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .parameter "statusCode"
    .parameter "statusLine"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "body"

    .prologue
    .line 152
    iput p1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusCode:I

    .line 153
    iput-object p2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusLine:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->mimeType:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->encoding:Ljava/lang/String;

    .line 157
    array-length v0, p5

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->contentLength:J

    .line 158
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->inputStream:Ljava/io/InputStream;

    .line 159
    return-void
.end method

.method setResultFile(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "statusCode"
    .parameter "statusLine"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "path"

    .prologue
    .line 177
    iput p1, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusCode:I

    .line 178
    iput-object p2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->statusLine:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->mimeType:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->encoding:Ljava/lang/String;

    .line 183
    :try_start_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->contentLength:J

    .line 185
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->inputStream:Ljava/io/InputStream;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1a} :catch_1c

    .line 186
    const/4 v2, 0x1

    .line 189
    .end local v1           #file:Ljava/io/File;
    :goto_1b
    return v2

    .line 187
    :catch_1c
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v2, p0, Landroid/webkit/gears/UrlInterceptHandlerGears$ServiceResponse;->this$0:Landroid/webkit/gears/UrlInterceptHandlerGears;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/webkit/gears/UrlInterceptHandlerGears;->access$000(Landroid/webkit/gears/UrlInterceptHandlerGears;Ljava/lang/String;)V

    .line 189
    const/4 v2, 0x0

    goto :goto_1b
.end method
