.class Ljava/net/InetAddress$CacheElement;
.super Ljava/lang/Object;
.source "InetAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheElement"
.end annotation


# instance fields
.field final nanoTimeAdded:J

.field next:Ljava/net/InetAddress$CacheElement;

.field final synthetic this$0:Ljava/net/InetAddress;


# direct methods
.method constructor <init>(Ljava/net/InetAddress;)V
    .registers 4
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Ljava/net/InetAddress$CacheElement;->this$0:Ljava/net/InetAddress;

    .line 685
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/net/InetAddress$CacheElement;->nanoTimeAdded:J

    .line 686
    return-void
.end method


# virtual methods
.method hostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 690
    iget-object v0, p0, Ljava/net/InetAddress$CacheElement;->this$0:Ljava/net/InetAddress;

    iget-object v0, v0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method inetAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 694
    iget-object v0, p0, Ljava/net/InetAddress$CacheElement;->this$0:Ljava/net/InetAddress;

    return-object v0
.end method
