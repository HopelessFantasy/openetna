.class public final Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;
.super Ljava/security/Provider;
.source "JSSEProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 112
    const-string v0, "HarmonyJSSE"

    const-wide/high16 v1, 0x3ff0

    const-string v3, "Harmony JSSE Provider"

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 113
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/JSSEProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 139
    return-void
.end method
