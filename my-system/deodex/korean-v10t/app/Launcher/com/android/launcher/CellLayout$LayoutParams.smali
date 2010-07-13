.class public Lcom/android/launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isDragging:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 846
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 847
    iput p1, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    .line 848
    iput p2, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    .line 849
    iput p3, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 850
    iput p4, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 851
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 834
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 835
    iput v0, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 836
    iput v0, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 837
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 840
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    iput v0, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 842
    iput v0, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 843
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .registers 14
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    const/4 v6, 0x1

    .line 856
    iget v0, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 857
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 858
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellX:I

    .line 859
    .local v2, myCellX:I
    iget v3, p0, Lcom/android/launcher/CellLayout$LayoutParams;->cellY:I

    .line 861
    .local v3, myCellY:I
    mul-int v4, v0, p1

    sub-int v5, v0, v6

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher/CellLayout$LayoutParams;->width:I

    .line 863
    mul-int v4, v1, p2

    sub-int v5, v1, v6

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher/CellLayout$LayoutParams;->height:I

    .line 866
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher/CellLayout$LayoutParams;->x:I

    .line 867
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/android/launcher/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher/CellLayout$LayoutParams;->y:I

    .line 868
    return-void
.end method
