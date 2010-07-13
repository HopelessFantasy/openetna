.class Lcom/android/calendar/AgendaActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$1;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 183
    :cond_1c
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$1;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$400(Lcom/android/calendar/AgendaActivity;)V

    .line 184
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$1;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$500(Lcom/android/calendar/AgendaActivity;)V

    .line 186
    :cond_26
    return-void
.end method
