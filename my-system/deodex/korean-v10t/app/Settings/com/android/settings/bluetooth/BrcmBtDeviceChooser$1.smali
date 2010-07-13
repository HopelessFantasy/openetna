.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$1;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->onCreate(Landroid/os/Bundle;)V
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
    .line 195
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$1;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$1;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->finish()V

    .line 197
    return-void
.end method
