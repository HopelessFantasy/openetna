.class public Lcom/lge/newbay/client/IProfile$Storage;
.super Ljava/lang/Object;
.source "IProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# instance fields
.field available:I

.field limit:I

.field unit:Ljava/lang/String;

.field usage:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter "unit"
    .parameter "limit"
    .parameter "available"
    .parameter "usage"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$Storage;->unit:Ljava/lang/String;

    .line 119
    iput p2, p0, Lcom/lge/newbay/client/IProfile$Storage;->limit:I

    .line 120
    iput p3, p0, Lcom/lge/newbay/client/IProfile$Storage;->available:I

    .line 121
    iput p4, p0, Lcom/lge/newbay/client/IProfile$Storage;->usage:I

    .line 122
    return-void
.end method


# virtual methods
.method public getAvailable()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/lge/newbay/client/IProfile$Storage;->available:I

    return v0
.end method

.method public getLimit()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/lge/newbay/client/IProfile$Storage;->limit:I

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lge/newbay/client/IProfile$Storage;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public getUsage()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/lge/newbay/client/IProfile$Storage;->usage:I

    return v0
.end method

.method public setAvailable(I)V
    .registers 2
    .parameter "available"

    .prologue
    .line 93
    iput p1, p0, Lcom/lge/newbay/client/IProfile$Storage;->available:I

    .line 94
    return-void
.end method

.method public setLimit(I)V
    .registers 2
    .parameter "limit"

    .prologue
    .line 79
    iput p1, p0, Lcom/lge/newbay/client/IProfile$Storage;->limit:I

    .line 80
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .registers 2
    .parameter "unit"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/newbay/client/IProfile$Storage;->unit:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setUsage(I)V
    .registers 2
    .parameter "usage"

    .prologue
    .line 107
    iput p1, p0, Lcom/lge/newbay/client/IProfile$Storage;->usage:I

    .line 108
    return-void
.end method
