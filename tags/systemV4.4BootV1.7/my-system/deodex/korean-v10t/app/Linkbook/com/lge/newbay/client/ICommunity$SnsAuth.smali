.class public Lcom/lge/newbay/client/ICommunity$SnsAuth;
.super Ljava/lang/Object;
.source "ICommunity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/ICommunity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnsAuth"
.end annotation


# instance fields
.field token:Ljava/lang/String;

.field tokenValidationTime:J

.field uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5
    .parameter "token"
    .parameter "uid"
    .parameter "tokenValidationTime"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->token:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->uid:Ljava/lang/String;

    .line 65
    iput-wide p3, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->tokenValidationTime:J

    .line 66
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenValidationTime()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->tokenValidationTime:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->token:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTokenValidationTime(J)V
    .registers 3
    .parameter "tokenValidationTime"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->tokenValidationTime:J

    .line 109
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .parameter "uid"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lge/newbay/client/ICommunity$SnsAuth;->uid:Ljava/lang/String;

    .line 95
    return-void
.end method
