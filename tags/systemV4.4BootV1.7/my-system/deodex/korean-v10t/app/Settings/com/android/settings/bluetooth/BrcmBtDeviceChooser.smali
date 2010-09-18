.class public Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;
.super Landroid/app/Activity;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrcmBtDeviceChooser"


# instance fields
.field private bluetoothState:I

.field private chooserTitle:Ljava/lang/String;

.field private extras:Landroid/os/Bundle;

.field private mBTDeviceSearchListener:Landroid/view/View$OnClickListener;

.field private mBTDeviceSearchStopListener:Landroid/view/View$OnClickListener;

.field private mDeviceList:Landroid/widget/ListView;

.field private mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mProgress:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanAgain:Landroid/widget/Button;

.field private mSelectedDeviceClasses:[I

.field private mSelectedServiceBitMasks:[I

.field private mStopScan:Landroid/widget/Button;

.field private mSummaryOff:Z

.field private m_BtDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

.field private progressBar:Landroid/widget/ProgressBar;

.field private title:Landroid/widget/TextView;

.field private visibility:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    const-string v0, "Bluetooth devices found"

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->chooserTitle:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_BtDevices:Ljava/util/ArrayList;

    .line 145
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgress:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSummaryOff:Z

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgress:Z

    if-eqz v0, :cond_33

    move v0, v1

    :goto_14
    iput v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->visibility:I

    .line 150
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 333
    new-instance v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$5;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mBTDeviceSearchListener:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$7;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mBTDeviceSearchStopListener:Landroid/view/View$OnClickListener;

    .line 637
    return-void

    .line 149
    :cond_33
    const/4 v0, 0x4

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->initView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSummaryOff:Z

    return v0
.end method

.method private addDevices()V
    .registers 6

    .prologue
    .line 437
    const-string v3, "BrcmBtDeviceChooser"

    const-string v4, "addDevices()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getLocalDeviceManager()Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothDeviceManager;->getDevicesCopy()Ljava/util/List;

    move-result-object v0

    .line 439
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 440
    .local v2, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    goto :goto_15

    .line 442
    .end local v2           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_25
    return-void
.end method

.method private createDevicePreference(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 5
    .parameter "localDevice"

    .prologue
    .line 468
    const-string v1, "BrcmBtDeviceChooser"

    const-string v2, "createDevicePreference()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    .line 470
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V

    .line 471
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->add(Ljava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V

    .line 473
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method private getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    .registers 8
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 291
    if-eqz p1, :cond_7

    instance-of v3, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-nez v3, :cond_9

    :cond_7
    move-object v3, v5

    .line 299
    :goto_8
    return-object v3

    .line 294
    :cond_9
    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 295
    .local v1, adapterMenuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 296
    .local v2, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v2, :cond_1d

    instance-of v3, v2, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    if-nez v3, :cond_1f

    :cond_1d
    move-object v3, v5

    .line 297
    goto :goto_8

    :cond_1f
    move-object v3, v2

    .line 299
    goto :goto_8
.end method

.method private hasSelectedServiceBitMasks(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Z
    .registers 6
    .parameter "mLocalDevice"

    .prologue
    const/4 v3, 0x1

    .line 408
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedServiceBitMasks:[I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedServiceBitMasks:[I

    array-length v2, v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v3

    .line 416
    :goto_b
    return v2

    .line 409
    :cond_c
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBtClass()I

    move-result v0

    .line 410
    .local v0, btClass:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedServiceBitMasks:[I

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 412
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedServiceBitMasks:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothClass$Service;->hasService(II)Z

    move-result v2

    if-eqz v2, :cond_22

    move v2, v3

    .line 413
    goto :goto_b

    .line 410
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 416
    :cond_25
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private initView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->setContentView(I)V

    .line 221
    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->title:Landroid/widget/TextView;

    .line 222
    const v0, 0x1010002

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    .line 223
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mScanAgain:Landroid/widget/Button;

    .line 224
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mStopScan:Landroid/widget/Button;

    .line 225
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->progressBar:Landroid/widget/ProgressBar;

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mScanAgain:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mBTDeviceSearchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mStopScan:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mBTDeviceSearchStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->chooserTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDrawingCacheEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 233
    return-void
.end method

.method private isSelectedDeviceClass(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Z
    .registers 6
    .parameter "mLocalDevice"

    .prologue
    const/4 v3, 0x1

    .line 392
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedDeviceClasses:[I

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedDeviceClasses:[I

    array-length v2, v2

    if-nez v2, :cond_c

    :cond_a
    move v2, v3

    .line 402
    :goto_b
    return v2

    .line 394
    :cond_c
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBtClass()I

    move-result v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothClass$Device$Major;->getDeviceMajor(I)I

    move-result v0

    .line 395
    .local v0, deviceMajor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedDeviceClasses:[I

    array-length v2, v2

    if-ge v1, v2, :cond_25

    .line 397
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedDeviceClasses:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_22

    move v2, v3

    .line 398
    goto :goto_b

    .line 395
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 402
    :cond_25
    const/4 v2, 0x0

    goto :goto_b
.end method

.method private onBluetoothStateChanged(I)V
    .registers 7
    .parameter "bluetoothState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 509
    const-string v0, "BrcmBtDeviceChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnBluetoothStateChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x2

    if-ne p1, v0, :cond_55

    .line 515
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 516
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 517
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_32

    .line 519
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerForContextMenu(Landroid/view/View;)V

    .line 522
    :cond_32
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->chooserTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->startScanning(Z)V

    .line 524
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mScanAgain:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mStopScan:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    :cond_54
    :goto_54
    return-void

    .line 530
    :cond_55
    if-nez p1, :cond_5b

    .line 531
    invoke-virtual {p0, v4}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->setProgress(Z)V

    goto :goto_54

    .line 533
    :cond_5b
    if-ne p1, v3, :cond_54

    .line 534
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 535
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f08015e

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_54
.end method

.method private declared-synchronized readPairedDevices()Z
    .registers 11

    .prologue
    .line 585
    monitor-enter p0

    :try_start_1
    const-string v8, "BrcmBtDeviceChooser"

    const-string v9, "readPairedDevices()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v8, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 587
    .local v7, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->listBonds()[Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_39

    move-result-object v2

    .line 589
    .local v2, bondedAddresses:[Ljava/lang/String;
    if-nez v2, :cond_17

    const/4 v8, 0x0

    .line 601
    :goto_15
    monitor-exit p0

    return v8

    .line 591
    :cond_17
    const/4 v3, 0x0

    .line 593
    .local v3, deviceAdded:Z
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    :try_start_19
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1b
    if-ge v4, v5, :cond_37

    aget-object v0, v1, v4

    .line 594
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v6

    .line 595
    .local v6, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v6, :cond_34

    .line 596
    new-instance v6, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .end local v6           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-object v8, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8, v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 597
    .restart local v6       #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_39

    .line 598
    const/4 v3, 0x1

    .line 593
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .end local v0           #address:Ljava/lang/String;
    .end local v6           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_37
    move v8, v3

    .line 601
    goto :goto_15

    .line 585
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #bondedAddresses:[Ljava/lang/String;
    .end local v3           #deviceAdded:Z
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #manager:Landroid/bluetooth/BluetoothDevice;
    :catchall_39
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    .registers 7
    .parameter "address"

    .prologue
    .line 554
    const-string v2, "BrcmBtDeviceChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findDevice()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_21
    if-ltz v0, :cond_3a

    .line 557
    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 559
    .local v1, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move-object v2, v1

    .line 563
    .end local v1           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :goto_36
    return-object v2

    .line 556
    .restart local v1       #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 563
    .end local v1           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :cond_3a
    const/4 v2, 0x0

    goto :goto_36
.end method

.method public declared-synchronized onBondingStateChanged(Ljava/lang/String;I)V
    .registers 7
    .parameter "address"
    .parameter "bondState"

    .prologue
    const-string v1, "BrcmBtDeviceChooser"

    .line 567
    monitor-enter p0

    :try_start_3
    const-string v1, "BrcmBtDeviceChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnBondingStateChanged()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 569
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_47

    .line 570
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->readPairedDevices()Z

    move-result v1

    if-nez v1, :cond_45

    .line 571
    const-string v1, "BrcmBtDeviceChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got bonding state changed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but we have no record of that mLocalDevice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_56

    .line 582
    :cond_45
    :goto_45
    monitor-exit p0

    return-void

    .line 576
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refresh()V

    .line 577
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V

    .line 578
    const/4 v1, 0x1

    if-ne p2, v1, :cond_45

    .line 580
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->connect()V
    :try_end_55
    .catchall {:try_start_47 .. :try_end_55} :catchall_56

    goto :goto_45

    .line 567
    .end local v0           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_56
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onBtClassChanged(Ljava/lang/String;)V
    .registers 4
    .parameter "address"

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 614
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_a

    .line 615
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refreshBtClass()V

    .line 617
    :cond_a
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 618
    monitor-exit p0

    return-void

    .line 613
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 285
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    .line 287
    :goto_b
    return v1

    .line 286
    :cond_c
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->onContextItemSelected(Landroid/view/MenuItem;)V

    .line 287
    const/4 v1, 0x1

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    const-string v3, "BrcmBtDeviceChooser"

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const-string v0, "BrcmBtDeviceChooser"

    const-string v0, "onCreate()"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->requestWindowFeature(I)Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_3e

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSummaryOff:Z

    .line 161
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    const-string v1, "android.bluetooth.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->chooserTitle:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    const-string v1, "android.bluetooth.selectedDeviceClassMajor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedDeviceClasses:[I

    .line 163
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    const-string v1, "android.bluetooth.selectedServiceBitMask"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSelectedServiceBitMasks:[I

    .line 166
    :cond_3e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_BtDevices:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_BtDevices:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    .line 169
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 170
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_5f

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->finish()V

    .line 211
    :cond_5e
    :goto_5e
    return-void

    .line 174
    :cond_5f
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->bluetoothState:I

    .line 176
    iget v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->bluetoothState:I

    if-nez v0, :cond_b6

    .line 178
    const-string v0, "BrcmBtDeviceChooser"

    const-string v0, "Bluetooth is Off"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080242

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080140

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080110

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$3;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080111

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$2;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$1;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5e

    .line 201
    :cond_b6
    iget v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->bluetoothState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5e

    .line 203
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->initView()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_ce

    .line 207
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDeviceList:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerForContextMenu(Landroid/view/View;)V

    .line 209
    :cond_ce
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->chooserTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5e
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 277
    invoke-direct {p0, p3}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getDeviceFromMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 278
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_7

    .line 280
    :goto_6
    return-void

    .line 279
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    goto :goto_6
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    const-string v0, "BrcmBtDeviceChooser"

    const-string v1, "OnDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 4
    .parameter "mLocalDevice"

    .prologue
    .line 451
    const-string v0, "BrcmBtDeviceChooser"

    const-string v1, "onDeviceAdded()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 453
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Got onDeviceAdded, but mLocalDevice already exists"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->isSelectedDeviceClass(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->hasSelectedServiceBitMasks(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 457
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->createDevicePreference(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V

    .line 459
    :cond_26
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settings/bluetooth/LocalBluetoothDevice;)V
    .registers 5
    .parameter "localDevice"

    .prologue
    .line 483
    const-string v1, "BrcmBtDeviceChooser"

    const-string v2, "OnDeviceDeleted"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 485
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_16

    .line 486
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->remove(Ljava/lang/Object;)V

    .line 488
    :cond_16
    return-void
.end method

.method public declared-synchronized onDeviceNameUpdated(Ljava/lang/String;)V
    .registers 6
    .parameter "address"

    .prologue
    .line 545
    monitor-enter p0

    :try_start_1
    const-string v1, "BrcmBtDeviceChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceNameUpdated()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    move-result-object v0

    .line 547
    .local v0, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v0, :cond_22

    .line 548
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refreshName()V

    .line 550
    :cond_22
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    .line 551
    monitor-exit p0

    return-void

    .line 545
    .end local v0           #mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v6, "android.bluetooth.SelectedDeviceName"

    const-string v5, "android.bluetooth.SelectedDeviceAddress"

    .line 304
    const-string v3, "BrcmBtDeviceChooser"

    const-string v4, "onItemCLick()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v3, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 307
    .local v2, manager:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 308
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->cancelDiscovery()V

    .line 310
    :cond_1a
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 312
    .local v0, btdevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mSummaryOff:Z

    if-eqz v3, :cond_88

    .line 314
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v3, "android.bluetooth.settings"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    const-string v3, "android.bluetooth.SelectedDeviceAddress"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v3, "android.bluetooth.SelectedDeviceName"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v3, "android.bluetooth.SelectedDeviceAddress"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string v3, "android.bluetooth.SelectedDeviceName"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v3, "android.bluetooth.SelectedDeviceBondedState"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBondState()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    const-string v3, "android.bluetooth.SelectedDeviceIsBusy"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isBusy()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    const-string v3, "android.bluetooth.SelectedDeviceIsConnected"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isConnected()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    const-string v3, "android.bluetooth.SelectedDeviceIsVisible"

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->isVisible()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->setResult(ILandroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->finish()V

    .line 331
    .end local v1           #intent:Landroid/content/Intent;
    :goto_87
    return-void

    .line 329
    :cond_88
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->onClicked()V

    goto :goto_87
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 262
    const-string v0, "BrcmBtDeviceChooser"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->unregisterCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 266
    return-void
.end method

.method public declared-synchronized onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;Ljava/lang/String;II)V
    .registers 7
    .parameter "p"
    .parameter "address"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 605
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->findDevice(Ljava/lang/String;)Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_15

    move-result-object v0

    .line 606
    .local v0, device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-nez v0, :cond_9

    .line 610
    :goto_7
    monitor-exit p0

    return-void

    .line 607
    :cond_9
    :try_start_9
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->onProfileStateChanged(Lcom/android/settings/bluetooth/LocalBluetoothProfileManager$Profile;II)V

    .line 608
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->refresh()V

    .line 609
    iget-object v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->notifyDataSetChanged()V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_7

    .line 605
    .end local v0           #device:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 238
    const-string v0, "BrcmBtDeviceChooser"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_BtDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->m_adapter:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->clear()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->addDevices()V

    .line 243
    new-instance v0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$4;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->registerCallback(Lcom/android/settings/bluetooth/LocalBluetoothManager$Callback;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.intent.action.REMOTE_NAME_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.intent.action.BOND_STATE_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.intent.action.HEADSET_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 253
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.a2dp.intent.action.SINK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.intent.action.REMOTE_DEVICE_DISAPPEARED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/app/Activity;)V

    .line 257
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .registers 5
    .parameter "started"

    .prologue
    .line 497
    const-string v0, "BrcmBtDeviceChooser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->setProgress(Z)V

    .line 499
    return-void
.end method

.method public setProgress(Z)V
    .registers 5
    .parameter "progressOn"

    .prologue
    const/4 v2, 0x0

    .line 626
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgress:Z

    .line 627
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mProgress:Z

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_8
    iput v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->visibility:I

    .line 628
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->mScanAgain:Landroid/widget/Button;

    if-nez p1, :cond_1c

    const/4 v1, 0x1

    :goto_16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 630
    return-void

    .line 627
    :cond_1a
    const/4 v0, 0x4

    goto :goto_8

    :cond_1c
    move v1, v2

    .line 629
    goto :goto_16
.end method
