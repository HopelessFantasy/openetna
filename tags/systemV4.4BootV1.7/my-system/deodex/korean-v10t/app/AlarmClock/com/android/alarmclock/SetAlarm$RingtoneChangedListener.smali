.class Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/SetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/SetAlarm;


# direct methods
.method private constructor <init>(Lcom/android/alarmclock/SetAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/alarmclock/SetAlarm;Lcom/android/alarmclock/SetAlarm$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    return-void
.end method


# virtual methods
.method public onRingtoneChanged(Landroid/net/Uri;)V
    .registers 4
    .parameter "ringtoneUri"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;->this$0:Lcom/android/alarmclock/SetAlarm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/alarmclock/SetAlarm;->access$000(Lcom/android/alarmclock/SetAlarm;Z)V

    .line 84
    return-void
.end method
