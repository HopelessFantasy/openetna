.class Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$2;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iput p2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 221
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 223
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$2;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$2;->val$id:I

    invoke-static {v1, v2, v0}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    .line 224
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Values in the map ---------------------------> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    return-void
.end method
