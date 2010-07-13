.class Lcom/android/camera/GalleryPicker$ItemInfo;
.super Ljava/lang/Object;
.source "GalleryPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/GalleryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemInfo"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field count:I

.field final synthetic this$0:Lcom/android/camera/GalleryPicker;


# direct methods
.method constructor <init>(Lcom/android/camera/GalleryPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/GalleryPicker$ItemInfo;->this$0:Lcom/android/camera/GalleryPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
