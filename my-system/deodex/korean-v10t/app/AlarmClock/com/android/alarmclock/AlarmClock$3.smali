.class Lcom/android/alarmclock/AlarmClock$3;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 337
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$3;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock$3;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v0}, Lcom/android/alarmclock/AlarmClock;->finish()V

    .line 339
    return-void
.end method
