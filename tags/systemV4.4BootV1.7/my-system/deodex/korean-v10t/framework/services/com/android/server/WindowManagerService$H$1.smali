.class Lcom/android/server/WindowManagerService$H$1;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WindowManagerService$H;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/WindowManagerService$H;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService$H;)V
    .registers 2
    .parameter

    .prologue
    .line 8123
    iput-object p1, p0, Lcom/android/server/WindowManagerService$H$1;->this$1:Lcom/android/server/WindowManagerService$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    .line 8124
    iget-object v5, p0, Lcom/android/server/WindowManagerService$H$1;->this$1:Lcom/android/server/WindowManagerService$H;

    iget-object v5, v5, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mass_storage_connection"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8125
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMountService;

    move-result-object v1

    .line 8127
    .local v1, mMountService:Landroid/os/IMountService;
    const/4 v5, 0x0

    :try_start_1b
    invoke-interface {v1, v5}, Landroid/os/IMountService;->setMassStorageEnabled(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_79

    .line 8130
    :goto_1e
    new-instance v0, Ljava/io/File;

    const-string v5, "/sys/devices/platform/msm_hsusb_periphera/composition"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8132
    .local v0, fileComposition:Ljava/io/File;
    :try_start_25
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 8133
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 8134
    .local v4, txtwriter:Ljava/io/FileWriter;
    new-instance v2, Ljava/io/BufferedWriter;

    invoke-direct {v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 8135
    .local v2, out:Ljava/io/BufferedWriter;
    const-string v5, "6000"

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 8136
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 8137
    const/4 v2, 0x0

    .line 8138
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_77

    .line 8146
    .end local v2           #out:Ljava/io/BufferedWriter;
    .end local v4           #txtwriter:Ljava/io/FileWriter;
    :goto_41
    iget-object v5, p0, Lcom/android/server/WindowManagerService$H$1;->this$1:Lcom/android/server/WindowManagerService$H;

    iget-object v5, v5, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8147
    return-void

    .line 8141
    :cond_51
    :try_start_51
    iget-object v5, p0, Lcom/android/server/WindowManagerService$H$1;->this$1:Lcom/android/server/WindowManagerService$H;

    iget-object v5, v5, Lcom/android/server/WindowManagerService$H;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST::WriteToFile::cannotWrite"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 8142
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_76} :catch_77

    goto :goto_41

    .line 8144
    .end local v3           #toast:Landroid/widget/Toast;
    :catch_77
    move-exception v5

    goto :goto_41

    .line 8128
    .end local v0           #fileComposition:Ljava/io/File;
    :catch_79
    move-exception v5

    goto :goto_1e
.end method
