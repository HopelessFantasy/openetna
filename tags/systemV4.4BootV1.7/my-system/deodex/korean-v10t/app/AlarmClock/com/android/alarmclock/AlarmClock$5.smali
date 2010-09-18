.class Lcom/android/alarmclock/AlarmClock$5;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$5;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 396
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock$5;->this$0:Lcom/android/alarmclock/AlarmClock;

    const-class v2, Lcom/android/alarmclock/ClockPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock$5;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v1, v0}, Lcom/android/alarmclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 399
    return-void
.end method
