.class Landroid/content/ActiveSyncInfo$1;
.super Ljava/lang/Object;
.source "ActiveSyncInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ActiveSyncInfo;
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
        "Landroid/content/ActiveSyncInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/ActiveSyncInfo;
    .registers 3
    .parameter "in"

    .prologue
    .line 57
    new-instance v0, Landroid/content/ActiveSyncInfo;

    invoke-direct {v0, p1}, Landroid/content/ActiveSyncInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/ActiveSyncInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ActiveSyncInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/ActiveSyncInfo;
    .registers 3
    .parameter "size"

    .prologue
    .line 61
    new-array v0, p1, [Landroid/content/ActiveSyncInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/ActiveSyncInfo$1;->newArray(I)[Landroid/content/ActiveSyncInfo;

    move-result-object v0

    return-object v0
.end method