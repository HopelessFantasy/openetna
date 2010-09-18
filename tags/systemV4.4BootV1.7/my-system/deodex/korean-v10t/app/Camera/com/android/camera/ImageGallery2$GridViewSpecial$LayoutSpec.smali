.class Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;
.super Ljava/lang/Object;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LayoutSpec"
.end annotation


# instance fields
.field mCellHeight:I

.field mCellSpacing:I

.field mCellWidth:I

.field mColumns:I

.field mLeftEdgePadding:I

.field mRightEdgePadding:I

.field final synthetic this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;IIIIII)V
    .registers 8
    .parameter
    .parameter "cols"
    .parameter "w"
    .parameter "h"
    .parameter "leftEdgePadding"
    .parameter "rightEdgePadding"
    .parameter "intercellSpacing"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput p2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    .line 763
    iput p3, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellWidth:I

    .line 764
    iput p4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    .line 765
    iput p5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mLeftEdgePadding:I

    .line 766
    iput p6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mRightEdgePadding:I

    .line 767
    iput p7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    .line 768
    return-void
.end method
