.class Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;",
        "Ljavax/net/ssl/SSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;Ljavax/net/ssl/SSLSession;>;"
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->maximumSize:I

    if-lez v1, :cond_20

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;->size()I

    move-result v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    iget v2, v2, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->maximumSize:I

    if-le v1, v2, :cond_20

    const/4 v1, 0x1

    move v0, v1

    .line 51
    .local v0, remove:Z
    :goto_12
    if-eqz v0, :cond_1f

    .line 52
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/ssl/SSLSession;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->removeById(Ljavax/net/ssl/SSLSession;)V

    .line 54
    :cond_1f
    return v0

    .line 50
    .end local v0           #remove:Z
    .restart local p0
    :cond_20
    const/4 v1, 0x0

    move v0, v1

    goto :goto_12
.end method
