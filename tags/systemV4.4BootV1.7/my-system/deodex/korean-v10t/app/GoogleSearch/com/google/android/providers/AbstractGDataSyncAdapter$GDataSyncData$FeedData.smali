.class public Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
.super Ljava/lang/Object;
.source "AbstractGDataSyncAdapter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public endIndex:I

.field public hasMoreEntriesToFetch:Z

.field public lastId:Ljava/lang/String;

.field public lastUpdatedTime:J

.field public numEntriesFetched:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 250
    new-instance v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;

    invoke-direct {v0}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData$1;-><init>()V

    sput-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;I)V
    .registers 8
    .parameter "lastUpdatedTime"
    .parameter "numEntriesFetched"
    .parameter "moreEntriesToFetch"
    .parameter "lastId"
    .parameter "endIndex"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-wide p1, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 220
    iput-wide p3, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    .line 221
    iput-boolean p5, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 222
    iput-object p6, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    .line 223
    iput p7, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    .line 224
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FeedData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastUpdatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " numEntriesFetched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " moreEntriesToFetch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " lastId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    :goto_63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    :cond_8b
    const-string v2, "<null>"

    goto :goto_63
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-wide v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->numEntriesFetched:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-boolean v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return-void

    .line 245
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method
