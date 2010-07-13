.class Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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

.field final synthetic val$c:Ljava/util/Calendar;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;Ljava/util/Calendar;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iput-object p2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->val$c:Ljava/util/Calendar;

    iput p3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 300
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v1, v1, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->val$c:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/android/alarmclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 301
    iget v1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$4;->val$id:I

    const v2, 0x7f070002

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 302
    .local v0, deleteAlarmItem:Landroid/view/MenuItem;
    return-void
.end method
