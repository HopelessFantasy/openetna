.class public Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
.super Landroid/content/TempProviderSyncAdapter$SyncData;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/providers/AbstractGDataSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GDataSyncData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final feedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 276
    new-instance v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$1;

    invoke-direct {v0}, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$1;-><init>()V

    sput-object v0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/content/TempProviderSyncAdapter$SyncData;-><init>()V

    .line 264
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v3, "GDataSyncData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v3, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;"
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 301
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;"
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 274
    return-void
.end method
