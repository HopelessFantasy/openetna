.class Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;

    invoke-static {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->access$000(Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;)Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 227
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog$1;->this$0:Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/device_test/touch_test/ColorPickerDialog;->dismiss()V

    .line 228
    return-void
.end method
