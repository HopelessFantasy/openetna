.class Lcom/android/camera/ImageGallery2$6;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2;->launchCropperOrFinish(Lcom/android/camera/ImageManager$IImage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageGallery2;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$6;->this$0:Lcom/android/camera/ImageGallery2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    return-void
.end method
