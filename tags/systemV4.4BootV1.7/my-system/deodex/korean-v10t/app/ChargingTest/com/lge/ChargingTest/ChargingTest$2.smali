.class Lcom/lge/ChargingTest/ChargingTest$2;
.super Landroid/content/BroadcastReceiver;
.source "ChargingTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/ChargingTest/ChargingTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/ChargingTest/ChargingTest;


# direct methods
.method constructor <init>(Lcom/lge/ChargingTest/ChargingTest;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/lge/ChargingTest/ChargingTest$2;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-static {}, Lcom/lge/ChargingTest/ChargingTest;->access$200()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 96
    :try_start_6
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lcom/lge/ChargingTest/ChargingTest;->file1:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lcom/lge/ChargingTest/ChargingTest;->etm_writer:Ljava/io/BufferedWriter;

    .line 97
    iget-object v1, p0, Lcom/lge/ChargingTest/ChargingTest$2;->this$0:Lcom/lge/ChargingTest/ChargingTest;

    const-string v2, "     Time\tBar#\tSOC(%)\tCable\tmVolt\tTemp\tHealth\r"

    invoke-virtual {v1, v2}, Lcom/lge/ChargingTest/ChargingTest;->WriteStringToFile(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_20

    .line 101
    :goto_1b
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/lge/ChargingTest/ChargingTest;->access$202(Z)Z

    .line 155
    :cond_1f
    return-void

    .line 98
    :catch_20
    move-exception v1

    move-object v0, v1

    .line 99
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b
.end method
