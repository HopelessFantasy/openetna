.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BrcmBtDeviceChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrcmBluetoothDeviceAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/LocalBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/bluetooth/LocalBluetoothDevice;>;"
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    .line 651
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 652
    iput-object p4, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->items:Ljava/util/ArrayList;

    .line 653
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 656
    move-object v4, p2

    .line 658
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_15

    .line 659
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 660
    .local v5, vi:Landroid/view/LayoutInflater;
    const v6, 0x7f03000f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 663
    .end local v5           #vi:Landroid/view/LayoutInflater;
    :cond_15
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/LocalBluetoothDevice;

    .line 665
    .local v1, mLocalDevice:Lcom/android/settings/bluetooth/LocalBluetoothDevice;
    if-eqz v1, :cond_6b

    .line 666
    const v6, 0x7f0a0005

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 667
    .local v3, title:Landroid/widget/TextView;
    const v6, 0x7f0a0032

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 668
    .local v2, summary:Landroid/widget/TextView;
    const v6, 0x7f0a0031

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 671
    .local v0, btClass:Landroid/widget/ImageView;
    if-eqz v3, :cond_43

    .line 672
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    :cond_43
    if-eqz v2, :cond_4c

    .line 674
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getSummary()I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 675
    :cond_4c
    if-eqz v0, :cond_55

    .line 676
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothDevice;->getBtClassDrawable()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    :cond_55
    iget-object v6, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$BrcmBluetoothDeviceAdapter;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->access$300(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 685
    if-eqz v3, :cond_64

    const/16 v6, 0x10

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 686
    :cond_64
    if-eqz v2, :cond_6b

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 689
    .end local v0           #btClass:Landroid/widget/ImageView;
    .end local v2           #summary:Landroid/widget/TextView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_6b
    return-object v4
.end method
