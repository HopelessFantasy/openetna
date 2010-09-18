.class Lcom/android/alarmclock/SetAlarm$1$1;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/SetAlarm$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/alarmclock/SetAlarm$1;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/SetAlarm$1;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$1$1;->this$1:Lcom/android/alarmclock/SetAlarm$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "d"
    .parameter "w"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$502(Z)Z

    .line 160
    return-void
.end method
