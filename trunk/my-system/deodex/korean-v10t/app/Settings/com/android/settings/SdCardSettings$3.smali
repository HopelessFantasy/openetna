.class Lcom/android/settings/SdCardSettings$3;
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
    .line 177
    iput-object p1, p0, Lcom/android/settings/SdCardSettings$3;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SdCardSettings$3;->this$0:Lcom/android/settings/SdCardSettings;

    invoke-static {v0}, Lcom/android/settings/SdCardSettings;->access$100(Lcom/android/settings/SdCardSettings;)Landroid/os/IMountService;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/IMountService;->unmountMedia(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 182
    :goto_11
    return-void

    .line 180
    :catch_12
    move-exception v0

    goto :goto_11
.end method
