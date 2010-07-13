.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$1;
.super Ljava/lang/Object;
.source "HttpURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/ResponseCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V
    .registers 2
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$1;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$1;->run()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/ResponseCache;
    .registers 2

    .prologue
    .line 723
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    return-object v0
.end method
