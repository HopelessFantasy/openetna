.class Lcom/android/alarmclock/ClockPicker$1;
.super Ljava/lang/Object;
.source "ClockPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/ClockPicker;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/ClockPicker;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/ClockPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/alarmclock/ClockPicker$1;->this$0:Lcom/android/alarmclock/ClockPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker$1;->this$0:Lcom/android/alarmclock/ClockPicker;

    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker$1;->this$0:Lcom/android/alarmclock/ClockPicker;

    invoke-static {v1}, Lcom/android/alarmclock/ClockPicker;->access$000(Lcom/android/alarmclock/ClockPicker;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/alarmclock/ClockPicker;->access$100(Lcom/android/alarmclock/ClockPicker;I)V

    .line 67
    return-void
.end method
