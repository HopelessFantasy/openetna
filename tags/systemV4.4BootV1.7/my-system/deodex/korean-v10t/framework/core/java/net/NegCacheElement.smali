.class Ljava/net/NegCacheElement;
.super Ljava/lang/Object;
.source "NegCacheElement.java"


# instance fields
.field final hostName:Ljava/lang/String;

.field final nanoTimeAdded:J


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "hostName"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/NegCacheElement;->nanoTimeAdded:J

    .line 42
    iput-object p1, p0, Ljava/net/NegCacheElement;->hostName:Ljava/lang/String;

    .line 43
    return-void
.end method
