.class Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/ssl/SSLSession;

    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method
