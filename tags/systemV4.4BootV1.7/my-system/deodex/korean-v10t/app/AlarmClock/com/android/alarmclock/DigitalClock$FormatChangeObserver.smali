.class Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/alarmclock/DigitalClock;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/alarmclock/DigitalClock;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-static {v0}, Lcom/android/alarmclock/DigitalClock;->access$300(Lcom/android/alarmclock/DigitalClock;)V

    .line 102
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-static {v0}, Lcom/android/alarmclock/DigitalClock;->access$200(Lcom/android/alarmclock/DigitalClock;)V

    .line 103
    return-void
.end method
