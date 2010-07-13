.class Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "ServerSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;",
        "Ljavax/net/ssl/SSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;Ljavax/net/ssl/SSLSession;>;"
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->maximumSize:I

    if-lez v0, :cond_12

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    iget v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->maximumSize:I

    if-le v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
