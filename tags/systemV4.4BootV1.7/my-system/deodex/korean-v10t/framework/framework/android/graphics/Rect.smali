.class public final Landroid/graphics/Rect;
.super Ljava/lang/Object;
.source "Rect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 518
    new-instance v0, Landroid/graphics/Rect$1;

    invoke-direct {v0}, Landroid/graphics/Rect$1;-><init>()V

    sput-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 54
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 55
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 56
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 68
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 69
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 70
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 71
    return-void
.end method

.method public static intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 414
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public final centerX()I
    .registers 3

    .prologue
    .line 148
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final centerY()I
    .registers 3

    .prologue
    .line 157
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public contains(II)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 267
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-lt p1, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-lt p2, v0, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public contains(IIII)Z
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 285
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, p1, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, p2, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, p3, :cond_1e

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p4, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public contains(Landroid/graphics/Rect;)Z
    .registers 4
    .parameter "r"

    .prologue
    .line 301
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_26

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_26

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 74
    move-object v0, p1

    check-cast v0, Landroid/graphics/Rect;

    move-object v1, v0

    .line 75
    .local v1, r:Landroid/graphics/Rect;
    if-eqz v1, :cond_23

    .line 76
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_21

    const/4 v2, 0x1

    .line 79
    :goto_20
    return v2

    :cond_21
    move v2, v4

    .line 76
    goto :goto_20

    :cond_23
    move v2, v4

    .line 79
    goto :goto_20
.end method

.method public final exactCenterX()F
    .registers 3

    .prologue
    .line 164
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public final exactCenterY()F
    .registers 3

    .prologue
    .line 171
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public final height()I
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public inset(II)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 249
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 250
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 251
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 252
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 253
    return-void
.end method

.method public intersect(IIII)Z
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 326
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p4, :cond_2a

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_2a

    .line 328
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p1, :cond_16

    .line 329
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 331
    :cond_16
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p2, :cond_1c

    .line 332
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 334
    :cond_1c
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le v0, p3, :cond_22

    .line 335
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 337
    :cond_22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-le v0, p4, :cond_28

    .line 338
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 340
    :cond_28
    const/4 v0, 0x1

    .line 342
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public intersect(Landroid/graphics/Rect;)Z
    .registers 6
    .parameter "r"

    .prologue
    .line 357
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method public intersects(IIII)Z
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 399
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, p3, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge p1, v0, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, p4, :cond_12

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final isEmpty()Z
    .registers 3

    .prologue
    .line 123
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_c

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public offset(II)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 219
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 220
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 221
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 222
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 223
    return-void
.end method

.method public offsetTo(II)V
    .registers 5
    .parameter "newLeft"
    .parameter "newTop"

    .prologue
    .line 233
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 234
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 235
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 236
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 237
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .registers 4
    .parameter "pw"

    .prologue
    const/16 v1, 0x2c

    .line 114
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 115
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "]["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 116
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 117
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 547
    return-void
.end method

.method public scale(F)V
    .registers 4
    .parameter "scale"

    .prologue
    const/high16 v1, 0x3f00

    .line 554
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_28

    .line 555
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 556
    iget v0, p0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 557
    iget v0, p0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 558
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 560
    :cond_28
    return-void
.end method

.method public set(IIII)V
    .registers 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 192
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 193
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 194
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 195
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 196
    return-void
.end method

.method public set(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 205
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 206
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 207
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 208
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 209
    return-void
.end method

.method public setEmpty()V
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 179
    return-void
.end method

.method public setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 373
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_42

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_42

    .line 375
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 376
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 377
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 378
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 379
    const/4 v0, 0x1

    .line 381
    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public sort()V
    .registers 4

    .prologue
    .line 487
    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_e

    .line 488
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 489
    .local v0, temp:I
    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 490
    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 492
    .end local v0           #temp:I
    :cond_e
    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_1c

    .line 493
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 494
    .restart local v0       #temp:I
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    .line 495
    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 497
    .end local v0           #temp:I
    :cond_1c
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 4
    .parameter "sb"

    .prologue
    const/16 v1, 0x2c

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 103
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, ", "

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 84
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Rect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public union(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 467
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_d

    .line 468
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 472
    :cond_6
    :goto_6
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_14

    .line 473
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 477
    :cond_c
    :goto_c
    return-void

    .line 469
    :cond_d
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_6

    .line 470
    iput p1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_6

    .line 474
    :cond_14
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-le p2, v0, :cond_c

    .line 475
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_c
.end method

.method public union(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 429
    if-ge p1, p3, :cond_28

    if-ge p2, p4, :cond_28

    .line 430
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_29

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_29

    .line 431
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-le v0, p1, :cond_16

    .line 432
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 433
    :cond_16
    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-le v0, p2, :cond_1c

    .line 434
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 435
    :cond_1c
    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ge v0, p3, :cond_22

    .line 436
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 437
    :cond_22
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ge v0, p4, :cond_28

    .line 438
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    .line 446
    :cond_28
    :goto_28
    return-void

    .line 440
    :cond_29
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 441
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 442
    iput p3, p0, Landroid/graphics/Rect;->right:I

    .line 443
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_28
.end method

.method public union(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "r"

    .prologue
    .line 456
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 457
    return-void
.end method

.method public final width()I
    .registers 3

    .prologue
    .line 131
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 512
    iget v0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    return-void
.end method
