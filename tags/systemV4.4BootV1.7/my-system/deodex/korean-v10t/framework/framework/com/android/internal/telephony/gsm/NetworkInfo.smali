.class public Lcom/android/internal/telephony/gsm/NetworkInfo;
.super Ljava/lang/Object;
.source "NetworkInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field operatorAlphaLong:Ljava/lang/String;

.field operatorAlphaShort:Ljava/lang/String;

.field operatorNumeric:Ljava/lang/String;

.field operatorRAT:Ljava/lang/String;

.field state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/NetworkInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V
    .registers 6
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;Ljava/lang/String;)V
    .registers 7
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "state"
    .parameter "operatorRAT"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 108
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    .line 110
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 114
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"

    .prologue
    .line 93
    invoke-static {p4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "operatorAlphaLong"
    .parameter "operatorAlphaShort"
    .parameter "operatorNumeric"
    .parameter "stateString"
    .parameter "operatorRAT"

    .prologue
    .line 124
    invoke-static {p4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private static rilStateToState(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    .registers 4
    .parameter "s"

    .prologue
    .line 135
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    .line 142
    :goto_a
    return-object v0

    .line 137
    :cond_b
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 138
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->AVAILABLE:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 139
    :cond_16
    const-string v0, "current"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 140
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->CURRENT:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 141
    :cond_21
    const-string v0, "forbidden"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 142
    sget-object v0, Lcom/android/internal/telephony/gsm/NetworkInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    goto :goto_a

    .line 144
    :cond_2c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RIL impl error: Invalid network state \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorRAT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "/"

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->state:Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/NetworkInfo;->operatorRAT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    return-void
.end method
