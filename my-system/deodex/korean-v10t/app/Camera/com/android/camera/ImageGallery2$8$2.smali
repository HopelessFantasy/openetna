.class Lcom/android/camera/ImageGallery2$8$2;
.super Ljava/lang/Object;
.source "ImageGallery2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageGallery2$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ImageGallery2$8;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$8;)V
    .registers 2
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$8$2;->this$1:Lcom/android/camera/ImageGallery2$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$8$2;->this$1:Lcom/android/camera/ImageGallery2$8;

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$8;->this$0:Lcom/android/camera/ImageGallery2;

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Lcom/android/camera/ImageGallery2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 614
    return-void
.end method
