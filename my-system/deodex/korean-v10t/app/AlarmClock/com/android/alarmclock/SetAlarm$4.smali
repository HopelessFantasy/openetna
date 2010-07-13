.class Lcom/android/alarmclock/SetAlarm$4;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/SetAlarm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/SetAlarm;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/SetAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$4;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 489
    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$600()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$200()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/alarmclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 497
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$4;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-virtual {v0}, Lcom/android/alarmclock/SetAlarm;->finish()V

    .line 499
    return-void
.end method
