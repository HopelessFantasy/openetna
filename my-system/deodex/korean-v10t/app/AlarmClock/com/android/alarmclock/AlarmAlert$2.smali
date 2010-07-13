.class Lcom/android/alarmclock/AlarmAlert$2;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmAlert;->updateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/alarmclock/AlarmAlert$2;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$2;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-static {v0}, Lcom/android/alarmclock/AlarmAlert;->access$000(Lcom/android/alarmclock/AlarmAlert;)V

    .line 199
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$2;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/android/alarmclock/AlarmAlert;->finish()V

    .line 200
    return-void
.end method
