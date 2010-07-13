.class Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$1;
.super Ljava/lang/Object;
.source "JarURLConnection.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 79
    const-string v0, "jar.cacheSize"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/jar/JarURLConnection$1;->run()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
