.class Lcom/android/camera/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/camera/CropImage$2;->this$0:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/CropImage$2;->this$0:Lcom/android/camera/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CropImage;->setResult(I)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/CropImage$2;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v0}, Lcom/android/camera/CropImage;->finish()V

    .line 442
    return-void
.end method
