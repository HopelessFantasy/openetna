.class public abstract Lcom/android/mms/model/RegionMediaModel;
.super Lcom/android/mms/model/MediaModel;
.source "RegionMediaModel.java"


# instance fields
.field protected mRegion:Lcom/android/mms/model/RegionModel;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 12
    .parameter "context"
    .parameter "tag"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .registers 8
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 43
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Landroid/lge/lgdrm/DrmContentSession;)V
    .registers 15
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "session"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/lge/lgdrm/DrmContentSession;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 71
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V
    .registers 8
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "region"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 49
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;Landroid/lge/lgdrm/DrmContentSession;)V
    .registers 15
    .parameter "context"
    .parameter "tag"
    .parameter "contentType"
    .parameter "src"
    .parameter "data"
    .parameter "region"
    .parameter "session"

    .prologue
    .line 63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/lge/lgdrm/DrmContentSession;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 64
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 65
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/android/mms/model/RegionModel;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    return v0
.end method

.method public setRegion(Lcom/android/mms/model/RegionModel;)V
    .registers 3
    .parameter "region"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionMediaModel;->notifyModelChanged(Z)V

    .line 81
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 95
    return-void
.end method
