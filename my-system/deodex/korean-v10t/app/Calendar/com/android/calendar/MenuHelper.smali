.class public Lcom/android/calendar/MenuHelper;
.super Ljava/lang/Object;
.source "MenuHelper.java"


# static fields
.field public static final MENU_AGENDA:I = 0x2

.field public static final MENU_DAY:I = 0x3

.field public static final MENU_EVENT_CREATE:I = 0x6

.field public static final MENU_EVENT_DELETE:I = 0x8

.field public static final MENU_EVENT_EDIT:I = 0x7

.field public static final MENU_EVENT_VIEW:I = 0x5

.field public static final MENU_GOTO_TODAY:I = 0x1

.field private static final MENU_GROUP_AGENDA:I = 0x1

.field private static final MENU_GROUP_DAY:I = 0x2

.field private static final MENU_GROUP_EVENT_CREATE:I = 0x5

.field private static final MENU_GROUP_MONTH:I = 0x4

.field private static final MENU_GROUP_PREFERENCES:I = 0x8

.field private static final MENU_GROUP_SELECT_CALENDARS:I = 0x7

.field private static final MENU_GROUP_TODAY:I = 0x6

.field private static final MENU_GROUP_WEEK:I = 0x3

.field public static final MENU_MONTH:I = 0x9

.field public static final MENU_PREFERENCES:I = 0xb

.field public static final MENU_SELECT_CALENDARS:I = 0xa

.field public static final MENU_WEEK:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    const v1, 0x7f08000b

    invoke-interface {p0, v5, v2, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 96
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x1080034

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 97
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 99
    const v1, 0x7f08000c

    invoke-interface {p0, v2, v3, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    const v1, 0x108003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 101
    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 103
    const v1, 0x7f08000d

    invoke-interface {p0, v3, v6, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 104
    const v1, 0x1080058

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 105
    const/16 v1, 0x77

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 107
    const/16 v1, 0x9

    const v2, 0x7f08000e

    invoke-interface {p0, v6, v1, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 108
    const v1, 0x1080044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 109
    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 111
    const/4 v1, 0x5

    const/4 v2, 0x6

    const v3, 0x7f080010

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 112
    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 113
    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 115
    const/4 v1, 0x6

    const v2, 0x7f080013

    invoke-interface {p0, v1, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    const v1, 0x1080054

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 117
    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 119
    const/4 v1, 0x7

    const/16 v2, 0xa

    const v3, 0x7f080014

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 121
    const v1, 0x1080042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    const/16 v1, 0x8

    const/16 v2, 0xb

    const v3, 0x7f080016

    invoke-interface {p0, v1, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 124
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 125
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 127
    return v5
.end method

.method public static onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/android/calendar/Navigator;)Z
    .registers 12
    .parameter "activity"
    .parameter "item"
    .parameter "nav"

    .prologue
    const/4 v8, 0x1

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_aa

    .line 172
    :pswitch_8
    const/4 v5, 0x0

    :goto_9
    return v5

    .line 133
    :pswitch_a
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, intent:Landroid/content/Intent;
    const-class v5, Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 136
    goto :goto_9

    .line 139
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1b
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->goToToday()V

    move v5, v8

    .line 140
    goto :goto_9

    .line 142
    :pswitch_20
    const-class v5, Lcom/android/calendar/CalendarPreferenceActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    move v5, v8

    .line 143
    goto :goto_9

    .line 145
    :pswitch_2f
    const-class v5, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v5, v8

    .line 147
    goto :goto_9

    .line 149
    :pswitch_41
    const-class v5, Lcom/android/calendar/DayActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v5, v8

    .line 151
    goto :goto_9

    .line 153
    :pswitch_53
    const-class v5, Lcom/android/calendar/WeekActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v5, v8

    .line 155
    goto :goto_9

    .line 157
    :pswitch_65
    const-class v5, Lcom/android/calendar/MonthActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v6

    invoke-static {p0, v5, v6, v7}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    move v5, v8

    .line 159
    goto :goto_9

    .line 161
    :pswitch_77
    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getSelectedTime()J

    move-result-wide v3

    .line 162
    .local v3, startMillis:J
    const-wide/32 v5, 0x36ee80

    add-long v0, v3, v5

    .line 163
    .local v0, endMillis:J
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 166
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 167
    const-string v5, "allDay"

    invoke-interface {p2}, Lcom/android/calendar/Navigator;->getAllDay()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v5, v8

    .line 169
    goto/16 :goto_9

    .line 131
    nop

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_2f
        :pswitch_41
        :pswitch_53
        :pswitch_8
        :pswitch_77
        :pswitch_8
        :pswitch_8
        :pswitch_65
        :pswitch_a
        :pswitch_20
    .end packed-switch
.end method

.method public static onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V
    .registers 8
    .parameter "activity"
    .parameter "menu"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    instance-of v0, p0, Lcom/android/calendar/AgendaActivity;

    if-eqz v0, :cond_3a

    .line 52
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 53
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 59
    :goto_f
    instance-of v0, p0, Lcom/android/calendar/DayActivity;

    if-eqz v0, :cond_41

    .line 60
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 61
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 67
    :goto_19
    instance-of v0, p0, Lcom/android/calendar/WeekActivity;

    if-eqz v0, :cond_48

    .line 68
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 69
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 75
    :goto_23
    instance-of v0, p0, Lcom/android/calendar/MonthActivity;

    if-eqz v0, :cond_4f

    .line 76
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 77
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 83
    :goto_2d
    instance-of v0, p0, Lcom/android/calendar/EventInfoActivity;

    if-eqz v0, :cond_56

    .line 84
    const/4 v0, 0x6

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 85
    const/4 v0, 0x6

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 90
    :goto_39
    return-void

    .line 55
    :cond_3a
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 56
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_f

    .line 63
    :cond_41
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 64
    invoke-interface {p1, v3, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_19

    .line 71
    :cond_48
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 72
    invoke-interface {p1, v4, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_23

    .line 79
    :cond_4f
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 80
    invoke-interface {p1, v5, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_2d

    .line 87
    :cond_56
    const/4 v0, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 88
    const/4 v0, 0x6

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_39
.end method

.method static switchTo(Landroid/app/Activity;Ljava/lang/String;J)V
    .registers 6
    .parameter "activity"
    .parameter "className"
    .parameter "startMillis"

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
