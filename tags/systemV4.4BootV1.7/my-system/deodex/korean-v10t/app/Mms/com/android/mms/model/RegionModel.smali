.class public Lcom/android/mms/model/RegionModel;
.super Lcom/android/mms/model/Model;
.source "RegionModel.java"


# static fields
.field private static final DEFAULT_FIT:Ljava/lang/String; = "meet"


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mFit:Ljava/lang/String;

.field private mHeight:I

.field private mLeft:I

.field private final mRegionId:Ljava/lang/String;

.field private mTop:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .registers 13
    .parameter "regionId"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 32
    const-string v2, "meet"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 35
    if-eqz p1, :cond_1a

    .line 36
    const-string v0, "Text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 37
    const-string v0, "scroll"

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->setFit(Ljava/lang/String;)V

    .line 39
    :cond_1a
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .parameter "regionId"
    .parameter "fit"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 43
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 8
    .parameter "regionId"
    .parameter "fit"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "bgColor"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    .line 50
    iput p3, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    .line 51
    iput p4, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    .line 52
    iput p5, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    .line 53
    iput p6, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    .line 54
    iput-object p7, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    return-object v0
.end method

.method public getFit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    return v0
.end method

.method public getRegionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/model/RegionModel;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    return v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .registers 3
    .parameter "bgColor"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mBackgroundColor:Ljava/lang/String;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 152
    return-void
.end method

.method public setFit(Ljava/lang/String;)V
    .registers 3
    .parameter "fit"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/mms/model/RegionModel;->mFit:Ljava/lang/String;

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 77
    return-void
.end method

.method public setHeight(I)V
    .registers 3
    .parameter "height"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mHeight:I

    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 137
    return-void
.end method

.method public setLeft(I)V
    .registers 3
    .parameter "left"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mLeft:I

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 92
    return-void
.end method

.method public setTop(I)V
    .registers 3
    .parameter "top"

    .prologue
    .line 105
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mTop:I

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 107
    return-void
.end method

.method public setWidth(I)V
    .registers 3
    .parameter "width"

    .prologue
    .line 120
    iput p1, p0, Lcom/android/mms/model/RegionModel;->mWidth:I

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/RegionModel;->notifyModelChanged(Z)V

    .line 122
    return-void
.end method
