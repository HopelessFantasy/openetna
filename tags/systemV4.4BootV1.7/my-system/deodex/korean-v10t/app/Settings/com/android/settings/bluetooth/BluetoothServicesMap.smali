.class public Lcom/android/settings/bluetooth/BluetoothServicesMap;
.super Ljava/lang/Object;
.source "BluetoothServicesMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getServiceString(Landroid/content/Context;ILcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;)V
    .registers 4
    .parameter "ctx"
    .parameter "serviceMask"
    .parameter "listManager"

    .prologue
    .line 45
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_e

    .line 46
    const v0, 0x7f08045b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 48
    :cond_e
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_1c

    .line 49
    const v0, 0x7f08045c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 51
    :cond_1c
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_2a

    .line 52
    const v0, 0x7f08045d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 54
    :cond_2a
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_38

    .line 55
    const v0, 0x7f08045e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 57
    :cond_38
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_46

    .line 58
    const v0, 0x7f08045f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 60
    :cond_46
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_54

    .line 61
    const v0, 0x7f080460

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 63
    :cond_54
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_62

    .line 64
    const v0, 0x7f080461

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 66
    :cond_62
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_70

    .line 67
    const v0, 0x7f080462

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 69
    :cond_70
    and-int/lit16 v0, p1, 0x100

    if-lez v0, :cond_7e

    .line 70
    const v0, 0x7f080463

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 72
    :cond_7e
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_8c

    .line 73
    const v0, 0x7f080464

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 75
    :cond_8c
    and-int/lit16 v0, p1, 0x400

    if-lez v0, :cond_9a

    .line 76
    const v0, 0x7f080465

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 78
    :cond_9a
    and-int/lit16 v0, p1, 0x800

    if-lez v0, :cond_a8

    .line 79
    const v0, 0x7f080466

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 81
    :cond_a8
    and-int/lit16 v0, p1, 0x1000

    if-lez v0, :cond_b6

    .line 82
    const v0, 0x7f080467

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 84
    :cond_b6
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_c4

    .line 85
    const v0, 0x7f080468

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 87
    :cond_c4
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_d2

    .line 88
    const v0, 0x7f080469

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 90
    :cond_d2
    const v0, 0x8000

    and-int/2addr v0, p1

    if-lez v0, :cond_e2

    .line 91
    const v0, 0x7f08046a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 93
    :cond_e2
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-lez v0, :cond_f1

    .line 94
    const v0, 0x7f08046b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 96
    :cond_f1
    const/high16 v0, 0x2

    and-int/2addr v0, p1

    if-lez v0, :cond_fb

    .line 97
    const-string v0, "PAN Group Ad-hoc networks "

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 99
    :cond_fb
    const/high16 v0, 0x4

    and-int/2addr v0, p1

    if-lez v0, :cond_105

    .line 100
    const-string v0, "Advanced audio distribution "

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 102
    :cond_105
    const/high16 v0, 0x8

    and-int/2addr v0, p1

    if-lez v0, :cond_114

    .line 103
    const v0, 0x7f08046e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 105
    :cond_114
    const/high16 v0, 0x10

    and-int/2addr v0, p1

    if-lez v0, :cond_123

    .line 106
    const v0, 0x7f08046f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 108
    :cond_123
    const/high16 v0, 0x20

    and-int/2addr v0, p1

    if-lez v0, :cond_132

    .line 109
    const v0, 0x7f080470

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 111
    :cond_132
    const/high16 v0, 0x40

    and-int/2addr v0, p1

    if-lez v0, :cond_141

    .line 112
    const v0, 0x7f080471

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 114
    :cond_141
    const/high16 v0, 0x80

    and-int/2addr v0, p1

    if-lez v0, :cond_150

    .line 115
    const v0, 0x7f080472

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 117
    :cond_150
    const/high16 v0, 0x100

    and-int/2addr v0, p1

    if-lez v0, :cond_15f

    .line 118
    const v0, 0x7f080473

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 120
    :cond_15f
    const/high16 v0, 0x200

    and-int/2addr v0, p1

    if-lez v0, :cond_16e

    .line 121
    const v0, 0x7f080474

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 123
    :cond_16e
    const/high16 v0, 0x400

    and-int/2addr v0, p1

    if-lez v0, :cond_17d

    .line 124
    const v0, 0x7f080475

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/bluetooth/BluetoothServicesMap$IServiceListManager;->add(Ljava/lang/String;)V

    .line 127
    :cond_17d
    return-void
.end method
