.class Lcom/android/alarmclock/AlarmClock$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 343
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$2;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock$2;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v0}, Lcom/android/alarmclock/AlarmClock;->finish()V

    .line 345
    return-void
.end method
