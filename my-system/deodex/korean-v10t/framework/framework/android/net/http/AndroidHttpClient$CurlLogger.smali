.class Landroid/net/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Landroid/net/http/AndroidHttpClient;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/http/AndroidHttpClient;Landroid/net/http/AndroidHttpClient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 438
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClient$CurlLogger;-><init>(Landroid/net/http/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v1, p0, Landroid/net/http/AndroidHttpClient$CurlLogger;->this$0:Landroid/net/http/AndroidHttpClient;

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->access$400(Landroid/net/http/AndroidHttpClient;)Landroid/net/http/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 442
    .local v0, configuration:Landroid/net/http/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_1f

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->access$500(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_1f

    .line 445
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->access$600(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    invoke-static {p1, v1}, Landroid/net/http/AndroidHttpClient;->access$700(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient$LoggingConfiguration;->access$800(Landroid/net/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 448
    :cond_1f
    return-void
.end method
