.class Lcom/android/alarmclock/AlarmKlaxon$1;
.super Landroid/os/Handler;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmKlaxon;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmKlaxon;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/alarmclock/AlarmKlaxon$1;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 97
    .end local p0
    :cond_5
    :goto_5
    return-void

    .line 84
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon$1;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-static {v0}, Lcom/android/alarmclock/AlarmKlaxon;->access$000(Lcom/android/alarmclock/AlarmKlaxon;)Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 85
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon$1;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-static {v0}, Lcom/android/alarmclock/AlarmKlaxon;->access$000(Lcom/android/alarmclock/AlarmKlaxon;)Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;->onKilled()V

    goto :goto_5

    .line 89
    :pswitch_18
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon$1;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/content/Context;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p0, v1}, Lcom/android/alarmclock/AlarmKlaxon;->access$100(Lcom/android/alarmclock/AlarmKlaxon;Landroid/content/Context;I)V

    goto :goto_5

    .line 94
    .restart local p0
    :pswitch_24
    iget-object v0, p0, Lcom/android/alarmclock/AlarmKlaxon$1;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmKlaxon;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setFmRadioOn(Z)V

    goto :goto_5

    .line 79
    nop

    :pswitch_data_2e
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_18
        :pswitch_24
    .end packed-switch
.end method
