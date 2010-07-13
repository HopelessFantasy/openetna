.class public Lcom/lge/newbay/client/Uris$FriendRequestParam;
.super Lcom/lge/newbay/client/Uris$SnsBasicParam;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendRequestParam"
.end annotation


# instance fields
.field requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$FriendRequestParam;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .registers 2
    .parameter "requestId"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$FriendRequestParam;->requestId:Ljava/lang/String;

    .line 112
    return-void
.end method
