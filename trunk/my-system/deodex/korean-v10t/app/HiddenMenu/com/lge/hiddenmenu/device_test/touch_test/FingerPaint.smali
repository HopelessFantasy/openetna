.class public Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;
.super Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;
.source "FingerPaint.java"

# interfaces
.implements Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;
    }
.end annotation


# static fields
.field private static final BLUR_MENU_ID:I = 0x3

.field private static final COLOR_MENU_ID:I = 0x1

.field private static final EMBOSS_MENU_ID:I = 0x2

.field private static final ERASE_MENU_ID:I = 0x4

.field private static final SRCATOP_MENU_ID:I = 0x5


# instance fields
.field private mBlur:Landroid/graphics/MaskFilter;

.field private mEmboss:Landroid/graphics/MaskFilter;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;)Landroid/graphics/Paint;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public colorChanged(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;

    invoke-direct {v0, p0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint$MyView;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->setContentView(Landroid/view/View;)V

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    .line 58
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 60
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 63
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 64
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_60

    const v2, 0x3ecccccd

    const/high16 v3, 0x40c0

    const/high16 v4, 0x4060

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    .line 69
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4100

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    .line 70
    return-void

    .line 66
    :array_60
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x7a

    const/16 v4, 0x35

    const/4 v3, 0x0

    .line 170
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 172
    const-string v0, "Color"

    invoke-interface {p1, v3, v6, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x33

    const/16 v2, 0x63

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 173
    const/4 v0, 0x2

    const-string v1, "Emboss"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x34

    const/16 v2, 0x73

    invoke-interface {v0, v1, v2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 174
    const/4 v0, 0x3

    const-string v1, "Blur"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 175
    const/4 v0, 0x4

    const-string v1, "Erase"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 176
    const/4 v0, 0x5

    const-string v1, "SrcATop"

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 186
    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 197
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 198
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    .line 228
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_19
    return v0

    .line 202
    :pswitch_1a
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-direct {v0, p0, p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;-><init>(Landroid/content/Context;Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->show()V

    move v0, v3

    .line 203
    goto :goto_19

    .line 205
    :pswitch_2a
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    if-eq v0, v1, :cond_3d

    .line 206
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mEmboss:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_3b
    move v0, v3

    .line 210
    goto :goto_19

    .line 208
    :cond_3d
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_3b

    .line 212
    :pswitch_43
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    if-eq v0, v1, :cond_56

    .line 213
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_54
    move v0, v3

    .line 217
    goto :goto_19

    .line 215
    :cond_56
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_54

    .line 219
    :pswitch_5c
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move v0, v3

    .line 221
    goto :goto_19

    .line 223
    :pswitch_6a
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 225
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/FingerPaint;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move v0, v3

    .line 226
    goto :goto_19

    .line 200
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_2a
        :pswitch_43
        :pswitch_5c
        :pswitch_6a
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/GraphicsActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 192
    const/4 v0, 0x1

    return v0
.end method
