.class public Landroid/view/View$MeasureSpec;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasureSpec"
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode(I)I
    .registers 2
    .parameter "measureSpec"

    .prologue
    .line 8427
    const/high16 v0, -0x4000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSize(I)I
    .registers 2
    .parameter "measureSpec"

    .prologue
    .line 8437
    const v0, 0x3fffffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static makeMeasureSpec(II)I
    .registers 3
    .parameter "size"
    .parameter "mode"

    .prologue
    .line 8415
    add-int v0, p0, p1

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 6
    .parameter "measureSpec"

    .prologue
    .line 8448
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8449
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 8451
    .local v2, size:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MeasureSpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8453
    .local v1, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1e

    .line 8454
    const-string v3, "UNSPECIFIED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8462
    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 8455
    :cond_1e
    const/high16 v3, 0x4000

    if-ne v0, v3, :cond_28

    .line 8456
    const-string v3, "EXACTLY "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 8457
    :cond_28
    const/high16 v3, -0x8000

    if-ne v0, v3, :cond_32

    .line 8458
    const-string v3, "AT_MOST "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 8460
    :cond_32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method
