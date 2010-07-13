.class public Lcom/lge/newbay/client/Uris$SnsBasicParam;
.super Ljava/lang/Object;
.source "Uris.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/Uris;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsBasicParam"
.end annotation


# instance fields
.field snsId:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSnsId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$SnsBasicParam;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lge/newbay/client/Uris$SnsBasicParam;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setSnsId(Ljava/lang/String;)V
    .registers 2
    .parameter "snsId"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$SnsBasicParam;->snsId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .parameter "userId"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/newbay/client/Uris$SnsBasicParam;->userId:Ljava/lang/String;

    .line 60
    return-void
.end method
