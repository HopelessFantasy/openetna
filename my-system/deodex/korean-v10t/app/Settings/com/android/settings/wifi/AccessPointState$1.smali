.class Lcom/android/settings/wifi/AccessPointState$1;
.super Ljava/lang/Object;
.source "AccessPointState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointState;
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
        "Lcom/android/settings/wifi/AccessPointState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/wifi/AccessPointState;
    .registers 7
    .parameter "in"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 836
    new-instance v0, Lcom/android/settings/wifi/AccessPointState;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/AccessPointState;-><init>(Lcom/android/settings/wifi/AccessPointState$1;)V

    .line 837
    .local v0, state:Lcom/android/settings/wifi/AccessPointState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/wifi/AccessPointState;->bssid:Ljava/lang/String;

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_8a

    move v2, v3

    :goto_15
    iput-boolean v2, v0, Lcom/android/settings/wifi/AccessPointState;->configured:Z

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/settings/wifi/AccessPointState;->ipAddress:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/settings/wifi/AccessPointState;->linkSpeed:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/settings/wifi/AccessPointState;->networkId:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_8c

    move v2, v3

    :goto_30
    iput-boolean v2, v0, Lcom/android/settings/wifi/AccessPointState;->primary:Z

    .line 843
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/settings/wifi/AccessPointState;->priority:I

    .line 844
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_8e

    move v2, v3

    :goto_3f
    iput-boolean v2, v0, Lcom/android/settings/wifi/AccessPointState;->hiddenSsid:Z

    .line 845
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/wifi/AccessPointState;->security:Ljava/lang/String;

    .line 846
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_90

    move v2, v3

    :goto_4e
    iput-boolean v2, v0, Lcom/android/settings/wifi/AccessPointState;->seen:Z

    .line 847
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_92

    move v2, v3

    :goto_57
    iput-boolean v2, v0, Lcom/android/settings/wifi/AccessPointState;->disabled:Z

    .line 848
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/android/settings/wifi/AccessPointState;->signal:I

    .line 849
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/wifi/AccessPointState;->ssid:Ljava/lang/String;

    .line 850
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, statusStr:Ljava/lang/String;
    if-eqz v1, :cond_71

    .line 852
    invoke-static {v1}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/wifi/AccessPointState;->status:Landroid/net/NetworkInfo$DetailedState;

    .line 854
    :cond_71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AccessPointState;->access$102(Lcom/android/settings/wifi/AccessPointState;Ljava/lang/String;)Ljava/lang/String;

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_94

    move v2, v3

    :goto_7f
    invoke-static {v0, v2}, Lcom/android/settings/wifi/AccessPointState;->access$202(Lcom/android/settings/wifi/AccessPointState;Z)Z

    .line 856
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AccessPointState;->access$302(Lcom/android/settings/wifi/AccessPointState;I)I

    .line 857
    return-object v0

    .end local v1           #statusStr:Ljava/lang/String;
    :cond_8a
    move v2, v4

    .line 838
    goto :goto_15

    :cond_8c
    move v2, v4

    .line 842
    goto :goto_30

    :cond_8e
    move v2, v4

    .line 844
    goto :goto_3f

    :cond_90
    move v2, v4

    .line 846
    goto :goto_4e

    :cond_92
    move v2, v4

    .line 847
    goto :goto_57

    .restart local v1       #statusStr:Ljava/lang/String;
    :cond_94
    move v2, v4

    .line 855
    goto :goto_7f
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/settings/wifi/AccessPointState;
    .registers 3
    .parameter "size"

    .prologue
    .line 861
    new-array v0, p1, [Lcom/android/settings/wifi/AccessPointState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPointState$1;->newArray(I)[Lcom/android/settings/wifi/AccessPointState;

    move-result-object v0

    return-object v0
.end method
