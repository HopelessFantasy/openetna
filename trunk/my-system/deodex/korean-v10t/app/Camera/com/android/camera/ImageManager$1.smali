.class Lcom/android/camera/ImageManager$1;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager;->emptyImageList()Lcom/android/camera/ImageManager$IImageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager;)V
    .registers 2
    .parameter

    .prologue
    .line 4060
    iput-object p1, p0, Lcom/android/camera/ImageManager$1;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V
    .registers 3
    .parameter "cb"
    .parameter "totalThumbnails"

    .prologue
    .line 4022
    return-void
.end method

.method public commitChanges()V
    .registers 1

    .prologue
    .line 4025
    return-void
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 4028
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4031
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 4035
    const/4 v0, 0x0

    return v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "i"

    .prologue
    .line 4043
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "uri"

    .prologue
    .line 4047
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4039
    const/4 v0, 0x1

    return v0
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 3
    .parameter "image"

    .prologue
    .line 4051
    const/4 v0, 0x0

    return v0
.end method

.method public removeImageAt(I)V
    .registers 2
    .parameter "i"

    .prologue
    .line 4055
    return-void
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .registers 2
    .parameter "changeCallback"

    .prologue
    .line 4058
    return-void
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .registers 3
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 4062
    return-void
.end method
