.class public Landroid/text/TextPaint;
.super Landroid/graphics/Paint;
.source "TextPaint.java"


# instance fields
.field public baselineShift:I

.field public bgColor:I

.field public density:F

.field public drawableState:[I

.field public linkColor:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "flags"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(I)V

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 33
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 45
    return-void
.end method


# virtual methods
.method public set(Landroid/text/TextPaint;)V
    .registers 3
    .parameter "tp"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 54
    iget v0, p1, Landroid/text/TextPaint;->bgColor:I

    iput v0, p0, Landroid/text/TextPaint;->bgColor:I

    .line 55
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iput v0, p0, Landroid/text/TextPaint;->baselineShift:I

    .line 56
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    iput v0, p0, Landroid/text/TextPaint;->linkColor:I

    .line 57
    iget-object v0, p1, Landroid/text/TextPaint;->drawableState:[I

    iput-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    .line 58
    iget v0, p1, Landroid/text/TextPaint;->density:F

    iput v0, p0, Landroid/text/TextPaint;->density:F

    .line 59
    return-void
.end method