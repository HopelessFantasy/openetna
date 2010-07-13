.class public Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;,
        Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mInitialColor:I

.field private mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;I)V
    .registers 4
    .parameter "context"
    .parameter "listener"
    .parameter "initialColor"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 217
    iput-object p2, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

    .line 218
    iput p3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->mInitialColor:I

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;)Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->mListener:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 223
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 224
    new-instance v0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;-><init>(Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;)V

    .line 231
    .local v0, l:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;
    new-instance v1, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->mInitialColor:I

    invoke-direct {v1, v2, v0, v3}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 232
    const-string v1, "Pick a Color"

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method
