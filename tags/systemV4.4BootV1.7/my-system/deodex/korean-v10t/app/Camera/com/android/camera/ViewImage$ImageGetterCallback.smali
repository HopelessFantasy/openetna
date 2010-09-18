.class interface abstract Lcom/android/camera/ViewImage$ImageGetterCallback;
.super Ljava/lang/Object;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ViewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ImageGetterCallback"
.end annotation


# virtual methods
.method public abstract completed(Z)V
.end method

.method public abstract fullImageSizeToUse(II)I
.end method

.method public abstract imageLoaded(IILandroid/graphics/Bitmap;Z)V
.end method

.method public abstract loadOrder()[I
.end method

.method public abstract wantsFullImage(II)Z
.end method

.method public abstract wantsThumbnail(II)Z
.end method
