.class Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
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
        "Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .registers 10
    .parameter "in"

    .prologue
    .line 253
    new-instance v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    return-object v0

    :cond_1d
    const/4 v5, 0x0

    goto :goto_11
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .registers 3
    .parameter "size"

    .prologue
    .line 259
    new-array v0, p1, [Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;->newArray(I)[Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v0

    return-object v0
.end method
