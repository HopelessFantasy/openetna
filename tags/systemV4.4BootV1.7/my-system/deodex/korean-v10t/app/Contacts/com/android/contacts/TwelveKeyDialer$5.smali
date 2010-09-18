.class Lcom/android/contacts/TwelveKeyDialer$5;
.super Landroid/os/Handler;
.source "TwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/TwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/contacts/TwelveKeyDialer;)V
    .registers 2
    .parameter

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1552
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 1563
    :goto_5
    return-void

    .line 1554
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v0}, Lcom/android/contacts/TwelveKeyDialer;->access$700(Lcom/android/contacts/TwelveKeyDialer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1555
    :try_start_d
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v1}, Lcom/android/contacts/TwelveKeyDialer;->access$800(Lcom/android/contacts/TwelveKeyDialer;)Landroid/media/ToneGenerator;

    move-result-object v1

    if-nez v1, :cond_21

    .line 1556
    const-string v1, "TwelveKeyDialer"

    const-string v2, "mToneStopper: mToneGenerator == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    :goto_1c
    monitor-exit v0

    goto :goto_5

    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_1e

    throw v1

    .line 1558
    :cond_21
    :try_start_21
    iget-object v1, p0, Lcom/android/contacts/TwelveKeyDialer$5;->this$0:Lcom/android/contacts/TwelveKeyDialer;

    invoke-static {v1}, Lcom/android/contacts/TwelveKeyDialer;->access$800(Lcom/android/contacts/TwelveKeyDialer;)Landroid/media/ToneGenerator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_1e

    goto :goto_1c

    .line 1552
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
