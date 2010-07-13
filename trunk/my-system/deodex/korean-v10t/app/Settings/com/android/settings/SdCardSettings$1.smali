.class Lcom/android/settings/SdCardSettings$1;
.super Ljava/lang/Object;
.source "SdCardSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SdCardSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SdCardSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SdCardSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings/SdCardSettings$1;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SdCardSettings$1;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-static {v0}, Lcom/android/settings/SdCardSettings;->access$100(Lcom/android/settings/SdCardSettings;)Landroid/os/IMountService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SdCardSettings$1;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-static {v1}, Lcom/android/settings/SdCardSettings;->access$000(Lcom/android/settings/SdCardSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/IMountService;->setMassStorageEnabled(Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    .line 166
    :goto_13
    return-void

    .line 164
    :catch_14
    move-exception v0

    goto :goto_13
.end method
