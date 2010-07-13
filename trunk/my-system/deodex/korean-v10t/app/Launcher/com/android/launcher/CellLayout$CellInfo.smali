.class final Lcom/android/launcher/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
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
            "Lcom/android/launcher/CellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field valid:Z


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 940
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method clearVacantCells()V
    .registers 4

    .prologue
    .line 943
    iget-object v2, p0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 944
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 946
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_15

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    invoke-virtual {p0}, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 948
    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 949
    return-void
.end method

.method findCellForSpan([III)Z
    .registers 5
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 983
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([IIIZ)Z
    .registers 13
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "clear"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 987
    iget-object v4, p0, Lcom/android/launcher/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 988
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 990
    .local v1, count:I
    const/4 v2, 0x0

    .line 992
    .local v2, found:Z
    iget v5, p0, Lcom/android/launcher/CellLayout$CellInfo;->spanX:I

    if-lt v5, p2, :cond_1a

    iget v5, p0, Lcom/android/launcher/CellLayout$CellInfo;->spanY:I

    if-lt v5, p3, :cond_1a

    .line 993
    iget v5, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    aput v5, p1, v6

    .line 994
    iget v5, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    aput v5, p1, v7

    .line 995
    const/4 v2, 0x1

    .line 999
    :cond_1a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-ge v3, v1, :cond_34

    .line 1000
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 1001
    .local v0, cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_54

    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_54

    .line 1002
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1003
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1004
    const/4 v2, 0x1

    .line 1010
    .end local v0           #cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    :cond_34
    const/4 v3, 0x0

    :goto_35
    if-ge v3, v1, :cond_4e

    .line 1011
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;

    .line 1012
    .restart local v0       #cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_57

    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_57

    .line 1013
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1014
    iget v5, v0, Lcom/android/launcher/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1015
    const/4 v2, 0x1

    .line 1020
    .end local v0           #cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    :cond_4e
    if-eqz p4, :cond_53

    invoke-virtual {p0}, Lcom/android/launcher/CellLayout$CellInfo;->clearVacantCells()V

    .line 1022
    :cond_53
    return v2

    .line 999
    .restart local v0       #cell:Lcom/android/launcher/CellLayout$CellInfo$VacantCell;
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1010
    :cond_57
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

    .line 952
    iget v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_16

    .line 953
    :cond_a
    iput v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 954
    iput v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 955
    invoke-virtual {p0}, Lcom/android/launcher/CellLayout$CellInfo;->clearVacantCells()V

    .line 966
    :goto_15
    return-void

    .line 959
    :cond_16
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 960
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_23
    if-ge v7, p3, :cond_37

    .line 961
    const/4 v6, 0x0

    .local v6, x:I
    :goto_26
    if-ge v6, p2, :cond_34

    .line 962
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 961
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 960
    :cond_34
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 965
    .end local v6           #x:I
    :cond_37
    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher/CellLayout;->access$000(Lcom/android/launcher/CellLayout$CellInfo;IIII[[Z)V

    goto :goto_15
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_38

    const-string v1, "null"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    iget-object v1, p0, Lcom/android/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_11
.end method
