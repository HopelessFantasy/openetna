.class Lcom/android/alarmclock/AlarmClock$7$2;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/alarmclock/AlarmClock$7;

.field final synthetic val$tempList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock$7;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$7$2;->this$1:Lcom/android/alarmclock/AlarmClock$7;

    iput-object p2, p0, Lcom/android/alarmclock/AlarmClock$7$2;->val$tempList:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 701
    const/4 v0, 0x0

    .local v0, counter:I
    :goto_1
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$7$2;->val$tempList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_44

    .line 703
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$7$2;->val$tempList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 704
    .local v1, idToBeDeleted:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$7$2;->this$1:Lcom/android/alarmclock/AlarmClock$7;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$7;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/AlarmClock;->access$1200(Lcom/android/alarmclock/AlarmClock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/alarmclock/Alarms;->deleteAlarm(Landroid/content/Context;I)V

    .line 705
    sget-object v2, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Values in the map size by onClick : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 708
    .end local v1           #idToBeDeleted:Ljava/lang/Integer;
    :cond_44
    return-void
.end method
