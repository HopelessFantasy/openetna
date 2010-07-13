.class Lcom/android/settings/BandMode$BandListItem;
.super Ljava/lang/Object;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BandListItem"
.end annotation


# instance fields
.field private mBandMode:I

.field final synthetic this$0:Lcom/android/settings/BandMode;


# direct methods
.method public constructor <init>(Lcom/android/settings/BandMode;I)V
    .registers 4
    .parameter
    .parameter "bm"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/BandMode$BandListItem;->this$0:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    .line 104
    iput p2, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    .line 105
    return-void
.end method


# virtual methods
.method public getBand()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Lcom/android/settings/BandMode;->access$300()[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/BandMode$BandListItem;->mBandMode:I

    aget-object v0, v0, v1

    return-object v0
.end method
