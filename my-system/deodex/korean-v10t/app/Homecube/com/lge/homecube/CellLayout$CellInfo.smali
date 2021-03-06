.class final Lcom/lge/homecube/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/homecube/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field cell:Landroid/view/View;

.field cellX:I

.field cellY:I

.field final current:Landroid/graphics/Rect;

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field screen:I

.field spanX:I

.field spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 920
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/homecube/CellLayout$CellInfo;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/lge/homecube/CellLayout$CellInfo;->clearVacantCells()V

    return-void
.end method

.method private clearVacantCells()V
    .registers 4

    .prologue
    .line 923
    iget-object v2, p0, Lcom/lge/homecube/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 924
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 926
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;

    invoke-virtual {p0}, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 928
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 929
    return-void
.end method


# virtual methods
.method findCellForSpan([III)Z
    .registers 12
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 963
    iget-object v4, p0, Lcom/lge/homecube/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 964
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 966
    .local v1, count:I
    const/4 v2, 0x0

    .line 968
    .local v2, found:Z
    iget v5, p0, Lcom/lge/homecube/CellLayout$CellInfo;->spanX:I

    if-lt v5, p2, :cond_1a

    iget v5, p0, Lcom/lge/homecube/CellLayout$CellInfo;->spanY:I

    if-lt v5, p3, :cond_1a

    .line 969
    iget v5, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    aput v5, p1, v6

    .line 970
    iget v5, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    aput v5, p1, v7

    .line 971
    const/4 v2, 0x1

    .line 975
    :cond_1a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-ge v3, v1, :cond_34

    .line 976
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;

    .line 977
    .local v0, cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_52

    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_52

    .line 978
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 979
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 980
    const/4 v2, 0x1

    .line 986
    .end local v0           #cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    :cond_34
    const/4 v3, 0x0

    :goto_35
    if-ge v3, v1, :cond_4e

    .line 987
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;

    .line 988
    .restart local v0       #cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_55

    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_55

    .line 989
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 990
    iget v5, v0, Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 991
    const/4 v2, 0x1

    .line 996
    .end local v0           #cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    :cond_4e
    invoke-direct {p0}, Lcom/lge/homecube/CellLayout$CellInfo;->clearVacantCells()V

    .line 998
    return v2

    .line 975
    .restart local v0       #cell:Lcom/lge/homecube/CellLayout$CellInfo$VacantCell;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 986
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_35
.end method

.method findVacantCellsFromOccupied([ZII)V
    .registers 12
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 932
    iget v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_16

    .line 933
    :cond_a
    iput v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 934
    iput v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 935
    invoke-direct {p0}, Lcom/lge/homecube/CellLayout$CellInfo;->clearVacantCells()V

    .line 946
    :goto_15
    return-void

    .line 939
    :cond_16
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 940
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_23
    if-ge v7, p3, :cond_37

    .line 941
    const/4 v6, 0x0

    .local v6, x:I
    :goto_26
    if-ge v6, p2, :cond_34

    .line 942
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 941
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 940
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 945
    .end local v6           #x:I
    :cond_37
    iget v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lge/homecube/CellLayout;->access$100(Lcom/lge/homecube/CellLayout$CellInfo;IIII[[Z)V

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_38

    const-string v1, "null"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    iget-object v1, p0, Lcom/lge/homecube/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_11
.end method
