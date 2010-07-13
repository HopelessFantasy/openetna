.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;)V
    .registers 2
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    new-instance v1, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6$1;-><init>(Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$6;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method
