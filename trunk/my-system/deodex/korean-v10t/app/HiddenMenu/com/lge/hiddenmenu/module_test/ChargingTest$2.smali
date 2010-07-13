.class Lcom/lge/hiddenmenu/module_test/ChargingTest$2;
.super Landroid/content/BroadcastReceiver;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/hiddenmenu/module_test/ChargingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;


# direct methods
.method constructor <init>(Lcom/lge/hiddenmenu/module_test/ChargingTest;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$2;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    invoke-static {}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$100()Z

    move-result v1

    if-nez v1, :cond_22

    .line 97
    :try_start_6
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-static {}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$300()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {v1}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$202(Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;

    .line 98
    iget-object v1, p0, Lcom/lge/hiddenmenu/module_test/ChargingTest$2;->this$0:Lcom/lge/hiddenmenu/module_test/ChargingTest;

    const-string v2, "Time\t\tBar#\tSOC(%)\tCable\tmVolt\tTemp\tHealth"

    invoke-virtual {v1, v2}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->WriteStringToFile(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_23

    .line 102
    :goto_1e
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lge/hiddenmenu/module_test/ChargingTest;->access$102(Z)Z

    .line 156
    :cond_22
    return-void

    .line 99
    :catch_23
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e
.end method
