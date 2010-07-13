.class public Lcom/lge/homecube/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/CellLayout;
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

    .line 826
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 827
    iput p1, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    .line 828
    iput p2, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    .line 829
    iput p3, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    .line 830
    iput p4, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    .line 831
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 814
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 815
    iput v0, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    .line 816
    iput v0, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    .line 817
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 820
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    iput v0, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    .line 822
    iput v0, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    .line 823
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

    .line 836
    iget v0, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellHSpan:I

    .line 837
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellVSpan:I

    .line 838
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellX:I

    .line 839
    .local v2, myCellX:I
    iget v3, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->cellY:I

    .line 841
    .local v3, myCellY:I
    mul-int v4, v0, p1

    sub-int v5, v0, v6

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->width:I

    .line 843
    mul-int v4, v1, p2

    sub-int v5, v1, v6

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->height:I

    .line 846
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->x:I

    .line 847
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/lge/homecube/CellLayout$LayoutParams;->y:I

    .line 848
    return-void
.end method
