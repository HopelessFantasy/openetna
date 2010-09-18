.class public abstract Lcom/android/camera/ImageManager$SimpleBaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleBaseImage"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .registers 2

    .prologue
    .line 2785
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 2789
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public fullSizeImageId()J
    .registers 3

    .prologue
    .line 2793
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2797
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContainer()Lcom/android/camera/ImageManager$IImageList;
    .registers 2

    .prologue
    .line 2801
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDateTaken()J
    .registers 3

    .prologue
    .line 2805
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2813
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 2845
    const/4 v0, 0x0

    return v0
.end method

.method public getIsPrivate()Z
    .registers 2

    .prologue
    .line 2817
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 2821
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 2825
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2809
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2837
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 2841
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2829
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 2849
    const/4 v0, 0x0

    return v0
.end method

.method public hasLatLong()Z
    .registers 2

    .prologue
    .line 2853
    const/4 v0, 0x0

    return v0
.end method

.method public isDrm()Z
    .registers 2

    .prologue
    .line 2861
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .prologue
    .line 2857
    const/4 v0, 0x1

    return v0
.end method

.method public onRemove()V
    .registers 2

    .prologue
    .line 2865
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public rotateImageBy(I)Z
    .registers 3
    .parameter "degrees"

    .prologue
    .line 2869
    const/4 v0, 0x0

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 3
    .parameter "description"

    .prologue
    .line 2873
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIsPrivate(Z)V
    .registers 3
    .parameter "isPrivate"

    .prologue
    .line 2877
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 2881
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPicasaId(J)V
    .registers 3
    .parameter "id"

    .prologue
    .line 2885
    return-void
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 2888
    return-void
.end method

.method public thumbUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 2891
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
