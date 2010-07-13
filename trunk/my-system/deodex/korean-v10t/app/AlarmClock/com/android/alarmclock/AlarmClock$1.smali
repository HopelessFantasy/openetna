.class Lcom/android/alarmclock/AlarmClock$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmClock;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock;Landroid/view/MenuItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$1;->this$0:Lcom/android/alarmclock/AlarmClock;

    iput-object p2, p0, Lcom/android/alarmclock/AlarmClock$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "d"
    .parameter "w"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock$1;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock$1;->val$item:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/alarmclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 318
    return-void
.end method
