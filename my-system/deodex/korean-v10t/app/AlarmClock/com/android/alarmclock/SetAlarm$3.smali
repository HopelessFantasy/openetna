.class Lcom/android/alarmclock/SetAlarm$3;
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
    .line 502
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$3;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 507
    return-void
.end method
