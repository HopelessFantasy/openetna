.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# instance fields
.field private mCid:I

.field private mLac:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 33
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 34
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 3
    .parameter "bundle"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 41
    const-string v0, "lac"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 42
    const-string v0, "cid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 43
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 110
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 85
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_9

    .line 90
    .local v2, s:Landroid/telephony/gsm/GsmCellLocation;
    if-nez p1, :cond_c

    move v3, v5

    .line 94
    .end local v2           #s:Landroid/telephony/gsm/GsmCellLocation;
    :goto_8
    return v3

    .line 86
    :catch_9
    move-exception v1

    .local v1, ex:Ljava/lang/ClassCastException;
    move v3, v5

    .line 87
    goto :goto_8

    .line 94
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/gsm/GsmCellLocation;
    :cond_c
    iget v3, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_8

    :cond_32
    move v3, v5

    goto :goto_8
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4
    .parameter "m"

    .prologue
    .line 119
    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public getCid()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 77
    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public setLacAndCid(II)V
    .registers 3
    .parameter "lac"
    .parameter "cid"

    .prologue
    .line 71
    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 72
    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 73
    return-void
.end method

.method public setStateInvalid()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 63
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    .line 64
    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
