.class Lcom/android/alarmclock/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/RepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/RepeatPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/alarmclock/RepeatPreference$1;->this$0:Lcom/android/alarmclock/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .registers 5
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/alarmclock/RepeatPreference$1;->this$0:Lcom/android/alarmclock/RepeatPreference;

    invoke-static {v0}, Lcom/android/alarmclock/RepeatPreference;->access$000(Lcom/android/alarmclock/RepeatPreference;)Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->set(IZ)V

    .line 73
    return-void
.end method
