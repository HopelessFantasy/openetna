.class public Lcom/lge/newbay/client/SnInfo;
.super Ljava/lang/Object;
.source "SnInfo.java"


# instance fields
.field private id:Ljava/lang/String;

.field private snId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "snId"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/lge/newbay/client/SnInfo;->id:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/lge/newbay/client/SnInfo;->snId:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/newbay/client/SnInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSnId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/newbay/client/SnInfo;->snId:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/newbay/client/SnInfo;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setSnId(Ljava/lang/String;)V
    .registers 2
    .parameter "snId"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/newbay/client/SnInfo;->snId:Ljava/lang/String;

    .line 52
    return-void
.end method
