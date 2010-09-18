.class public Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeekBarPreference"


# instance fields
.field private mMyIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 41
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->setPositiveButtonText(I)V

    .line 42
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->setNegativeButtonText(I)V

    .line 45
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->getDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->setDialogIcon(Landroid/graphics/drawable/Drawable;)V

    .line 47
    return-void
.end method

.method protected static getALCCheckBox(Landroid/view/View;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "dialogView"

    .prologue
    .line 66
    const v0, 0x7f0700da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/CheckBox;

    return-object p0
.end method

.method protected static getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "dialogView"

    .prologue
    .line 62
    const v0, 0x7f0700dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 53
    const v1, 0x7f0700d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .local v0, iconView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    .line 55
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/led_test/SeekBarPreference;->mMyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :goto_15
    return-void

    .line 57
    :cond_16
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method
