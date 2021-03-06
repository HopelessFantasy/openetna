.class public final Lcom/google/common/geom/Rectangle;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/geom/Bounds;


# instance fields
.field public h:I

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/google/common/geom/Rectangle;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/common/geom/Rectangle;->x:I

    iput p2, p0, Lcom/google/common/geom/Rectangle;->y:I

    iput p3, p0, Lcom/google/common/geom/Rectangle;->w:I

    iput p4, p0, Lcom/google/common/geom/Rectangle;->h:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    check-cast p1, Lcom/google/common/geom/Rectangle;

    iget v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    iget v1, p1, Lcom/google/common/geom/Rectangle;->x:I

    if-ne v0, v1, :cond_2d

    iget v0, p0, Lcom/google/common/geom/Rectangle;->y:I

    iget v1, p1, Lcom/google/common/geom/Rectangle;->y:I

    if-ne v0, v1, :cond_2d

    iget v0, p0, Lcom/google/common/geom/Rectangle;->w:I

    iget v1, p1, Lcom/google/common/geom/Rectangle;->w:I

    if-ne v0, v1, :cond_2d

    iget v0, p0, Lcom/google/common/geom/Rectangle;->h:I

    iget v1, p1, Lcom/google/common/geom/Rectangle;->h:I

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    move v0, v2

    goto :goto_2c

    :cond_2f
    move v0, v2

    goto :goto_2c
.end method

.method public getBottom()I
    .registers 3

    iget v0, p0, Lcom/google/common/geom/Rectangle;->y:I

    iget v1, p0, Lcom/google/common/geom/Rectangle;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/google/common/geom/Rectangle;->h:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    iget v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    return v0
.end method

.method public getRight()I
    .registers 3

    iget v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    iget v1, p0, Lcom/google/common/geom/Rectangle;->w:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .registers 2

    iget v0, p0, Lcom/google/common/geom/Rectangle;->y:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/google/common/geom/Rectangle;->w:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    iget v1, p0, Lcom/google/common/geom/Rectangle;->y:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/geom/Rectangle;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/geom/Rectangle;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setBounds(IIII)V
    .registers 5

    iput p1, p0, Lcom/google/common/geom/Rectangle;->x:I

    iput p2, p0, Lcom/google/common/geom/Rectangle;->y:I

    iput p3, p0, Lcom/google/common/geom/Rectangle;->w:I

    iput p4, p0, Lcom/google/common/geom/Rectangle;->h:I

    return-void
.end method

.method public setBounds(Lcom/google/common/geom/Bounds;)V
    .registers 3

    invoke-interface {p1}, Lcom/google/common/geom/Bounds;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    invoke-interface {p1}, Lcom/google/common/geom/Bounds;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/common/geom/Rectangle;->y:I

    invoke-interface {p1}, Lcom/google/common/geom/Bounds;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/common/geom/Rectangle;->w:I

    invoke-interface {p1}, Lcom/google/common/geom/Bounds;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/common/geom/Rectangle;->h:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v2, ","

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/geom/Rectangle;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/geom/Rectangle;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/geom/Rectangle;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/common/geom/Rectangle;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(IIII)V
    .registers 8

    iget v0, p0, Lcom/google/common/geom/Rectangle;->x:I

    iget v1, p0, Lcom/google/common/geom/Rectangle;->w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/geom/Rectangle;->y:I

    iget v2, p0, Lcom/google/common/geom/Rectangle;->h:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/common/geom/Rectangle;->x:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/common/geom/Rectangle;->x:I

    iget v2, p0, Lcom/google/common/geom/Rectangle;->y:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/common/geom/Rectangle;->y:I

    add-int v2, p1, p3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/google/common/geom/Rectangle;->x:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/common/geom/Rectangle;->w:I

    add-int v0, p2, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/common/geom/Rectangle;->y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/geom/Rectangle;->h:I

    return-void
.end method
