.class public Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothDevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private mIsBusy:Z

.field private mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 7
    .parameter "context"
    .parameter "localDevice"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 47
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_23

    .line 48
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 49
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 50
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 53
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_23
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 55
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    .line 60
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .registers 4
    .parameter "another"

    .prologue
    .line 117
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_6

    .line 119
    const/4 v0, 0x1

    .line 122
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getDevice()Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBusy:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 108
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 110
    const v1, 0x7f0a0031

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 111
    .local v0, btClass:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBtClassDrawable()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0xff

    :goto_22
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 113
    return-void

    .line 112
    :cond_26
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_22
.end method

.method public onDeviceAttributesChanged(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 3
    .parameter "device"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getSummary()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBusy:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyChanged()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 96
    return-void
.end method

.method protected onPrepareForRemoval()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothDevice$Callback;)V

    .line 70
    return-void
.end method
