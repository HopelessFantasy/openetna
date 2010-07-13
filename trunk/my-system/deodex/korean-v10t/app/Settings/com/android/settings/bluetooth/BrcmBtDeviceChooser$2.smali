.class Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$2;
.super Ljava/lang/Object;
.source "BrcmBtDeviceChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 190
    iput-object p1, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$2;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser$2;->this$0:Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BrcmBtDeviceChooser;->finish()V

    .line 192
    return-void
.end method
