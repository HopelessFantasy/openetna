.class Lcom/google/android/net/ParentalControlState$1;
.super Ljava/lang/Object;
.source "ParentalControlState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/net/ParentalControlState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/net/ParentalControlState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/net/ParentalControlState;
    .registers 5
    .parameter "source"

    .prologue
    const/4 v2, 0x1

    .line 32
    new-instance v0, Lcom/google/android/net/ParentalControlState;

    invoke-direct {v0}, Lcom/google/android/net/ParentalControlState;-><init>()V

    .line 33
    .local v0, status:Lcom/google/android/net/ParentalControlState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_16

    move v1, v2

    :goto_d
    iput-boolean v1, v0, Lcom/google/android/net/ParentalControlState;->isEnabled:Z

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/net/ParentalControlState;->redirectUrl:Ljava/lang/String;

    .line 35
    return-object v0

    .line 33
    :cond_16
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/net/ParentalControlState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/net/ParentalControlState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/net/ParentalControlState;
    .registers 3
    .parameter "size"

    .prologue
    .line 39
    new-array v0, p1, [Lcom/google/android/net/ParentalControlState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/net/ParentalControlState$1;->newArray(I)[Lcom/google/android/net/ParentalControlState;

    move-result-object v0

    return-object v0
.end method
