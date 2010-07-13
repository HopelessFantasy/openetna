.class public Lcom/android/alarmclock/AlarmClock;
.super Landroid/app/Activity;
.source "AlarmClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;
    }
.end annotation


# static fields
.field private static final ADD_ITEM:I = 0x0

.field static final CLOCKS:[I = null

.field static final DEBUG:Z = false

.field private static final DELETE_ITEM:I = 0x1

.field private static final DESELECT_ITEM:I = 0x4

.field public static ID_IN_DB:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final MAX_ALARM_COUNT:I = 0x14

.field static final PREFERENCES:Ljava/lang/String; = "AlarmClock"

.field static final PREF_CLOCK_FACE:Ljava/lang/String; = "face"

.field static final PREF_SHOW_CLOCK:Ljava/lang/String; = "show_clock"

.field private static final SELECT_ITEM:I = 0x3

.field static final SET_ALARM:I = 0x1

.field private static final TOGGLE_ITEM:I = 0x2

.field public static mBackOption:Z

.field public static mBackOptionForSetAlarm:Z


# instance fields
.field private bAfterDelete:Z

.field private context:Landroid/content/Context;

.field private flag:Z

.field private mAddAlarmItem:Landroid/view/MenuItem;

.field private mAlarmsList:Landroid/widget/ListView;

.field private mClock:Landroid/view/View;

.field private mClockLayout:Landroid/view/ViewGroup;

.field private mCursor:Landroid/database/Cursor;

.field private mDeselectAllItem:Landroid/view/MenuItem;

.field private mFace:I

.field private mFactory:Landroid/view/LayoutInflater;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRemoveAlarmItem:Landroid/view/MenuItem;

.field private mSelectAllItem:Landroid/view/MenuItem;

.field private mSettingsItem:Landroid/view/MenuItem;

.field private mToggleClockItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/android/alarmclock/AlarmClock;->mBackOption:Z

    .line 84
    sput-boolean v0, Lcom/android/alarmclock/AlarmClock;->mBackOptionForSetAlarm:Z

    .line 95
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    return-void

    .line 95
    nop

    :array_16
    .array-data 0x4
        0x4t 0x0t 0x3t 0x7ft
        0x7t 0x0t 0x3t 0x7ft
        0x5t 0x0t 0x3t 0x7ft
        0x6t 0x0t 0x3t 0x7ft
        0x9t 0x0t 0x3t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClock:Landroid/view/View;

    .line 78
    iput-boolean v1, p0, Lcom/android/alarmclock/AlarmClock;->flag:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/alarmclock/AlarmClock;->bAfterDelete:Z

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/alarmclock/AlarmClock;->mFace:I

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/AlarmClock;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/alarmclock/AlarmClock;Landroid/widget/ListView;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/alarmclock/AlarmClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/alarmclock/AlarmClock;->flag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/alarmclock/AlarmClock;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/alarmclock/AlarmClock;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/alarmclock/AlarmClock;->flag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/alarmclock/AlarmClock;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/alarmclock/AlarmClock;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/alarmclock/AlarmClock;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/alarmclock/AlarmClock;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/alarmclock/AlarmClock;->setClockVisibility(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSettingsItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/alarmclock/AlarmClock;)Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method public static declared-synchronized addToMap(Landroid/content/Context;IZ)V
    .registers 7
    .parameter "context"
    .parameter "id"
    .parameter "enabled"

    .prologue
    .line 867
    const-class v0, Lcom/android/alarmclock/AlarmClock;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 869
    monitor-exit v0

    return-void

    .line 867
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getClockVisibility()Z
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private saveClockVisibility()V
    .registers 4

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_clock"

    invoke-direct {p0}, Lcom/android/alarmclock/AlarmClock;->getClockVisibility()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 864
    return-void
.end method

.method private setClockVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 860
    return-void

    .line 859
    :cond_9
    const/16 v1, 0x8

    goto :goto_5
.end method


# virtual methods
.method protected inflateClock()V
    .registers 4

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClock:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 489
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mClock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    sget-object v1, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    iget v2, p0, Lcom/android/alarmclock/AlarmClock;->mFace:I

    aget v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClock:Landroid/view/View;

    .line 492
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mClock:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 493
    return-void
.end method

.method public isDeSelectAll()Z
    .registers 8

    .prologue
    .line 557
    const/4 v1, 0x0

    .line 558
    .local v1, cnt:I
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 559
    .local v4, view:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 561
    .local v3, listItemCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_13
    if-ge v2, v3, :cond_39

    .line 562
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_23

    .line 563
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    .line 561
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 566
    :cond_23
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 567
    .local v0, cbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_20

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 571
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :cond_39
    if-ne v1, v3, :cond_3d

    .line 572
    const/4 v5, 0x1

    .line 574
    :goto_3c
    return v5

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method public isSelectAll()Z
    .registers 8

    .prologue
    .line 534
    const/4 v1, 0x0

    .line 535
    .local v1, cnt:I
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const v6, 0x7f0a0009

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 536
    .local v4, view:Landroid/widget/ListView;
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 538
    .local v3, listItemCount:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_13
    if-ge v2, v3, :cond_39

    .line 539
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_23

    .line 540
    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    .line 538
    :cond_20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 543
    :cond_23
    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 544
    .local v0, cbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 545
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 549
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :cond_39
    if-ne v1, v3, :cond_3d

    .line 550
    const/4 v5, 0x1

    .line 552
    :goto_3c
    return v5

    :cond_3d
    const/4 v5, 0x0

    goto :goto_3c
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 310
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/alarmclock/AlarmClock$1;

    invoke-direct {v2, p0, p1}, Lcom/android/alarmclock/AlarmClock$1;-><init>(Lcom/android/alarmclock/AlarmClock;Landroid/view/MenuItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 327
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 328
    iput-object p0, p0, Lcom/android/alarmclock/AlarmClock;->context:Landroid/content/Context;

    .line 330
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_4c

    .line 331
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Lcom/android/alarmclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/alarmclock/AlarmClock$3;

    invoke-direct {v3, p0}, Lcom/android/alarmclock/AlarmClock$3;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/alarmclock/AlarmClock$2;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/AlarmClock$2;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 438
    :goto_4b
    return-void

    .line 351
    :cond_4c
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->setContentView(I)V

    .line 352
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 353
    const-string v1, "AlarmClock"

    invoke-virtual {p0, v1, v5}, Lcom/android/alarmclock/AlarmClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    .line 355
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/alarmclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 356
    const v1, 0x7f0a0009

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 357
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v3, p0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/android/alarmclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 358
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 359
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 360
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 362
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/alarmclock/AlarmClock$4;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/AlarmClock$4;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 393
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    .line 394
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mClockLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/alarmclock/AlarmClock$5;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/AlarmClock$5;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "show_clock"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/alarmclock/AlarmClock;->setClockVisibility(Z)V

    .line 405
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 406
    .local v0, addButton:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_e8

    .line 408
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 415
    :goto_d3
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 417
    const/high16 v1, 0x41c8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 418
    new-instance v1, Lcom/android/alarmclock/AlarmClock$6;

    invoke-direct {v1, p0}, Lcom/android/alarmclock/AlarmClock$6;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4b

    .line 412
    :cond_e8
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_d3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 499
    const v0, 0x7f070001

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    .line 500
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 503
    const v0, 0x7f070002

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    .line 504
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 505
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-gtz v0, :cond_34

    .line 507
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    :cond_34
    const/4 v0, 0x2

    const v1, 0x7f070008

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    .line 511
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    const v1, 0x7f020019

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 513
    const/4 v0, 0x3

    const v1, 0x7f07000b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    .line 514
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    const v1, 0x108002b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 517
    const/4 v0, 0x4

    const v1, 0x7f07000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    .line 518
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 519
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    const v1, 0x108002c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 521
    const v0, 0x7f07002d

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSettingsItem:Landroid/view/MenuItem;

    .line 522
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSettingsItem:Landroid/view/MenuItem;

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 523
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSettingsItem:Landroid/view/MenuItem;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/alarmclock/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 525
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 483
    invoke-static {}, Lcom/android/alarmclock/ToastMaster;->cancelToast()V

    .line 484
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 485
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 25
    .parameter "item"

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_55

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v18

    .line 608
    .local v18, uri:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 609
    .local v16, segment:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 614
    .local v15, newId:I
    new-instance v11, Landroid/content/Intent;

    const-class v20, Lcom/android/alarmclock/SetAlarm;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 615
    .local v11, intent:Landroid/content/Intent;
    const-string v20, "alarm_id"

    move-object v0, v11

    move-object/from16 v1, v20

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    .line 618
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const/16 v20, 0x1

    .line 850
    .end local v11           #intent:Landroid/content/Intent;
    .end local v15           #newId:I
    .end local v16           #segment:Ljava/lang/String;
    .end local v18           #uri:Landroid/net/Uri;
    .end local p1
    :goto_54
    return v20

    .line 622
    .restart local p1
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1b5

    .line 624
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/alarmclock/AlarmClock;->mBackOption:Z

    .line 625
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/alarmclock/AlarmClock;->flag:Z

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mSettingsItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 627
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mFactory:Landroid/view/LayoutInflater;

    .line 628
    const-string v20, "AlarmClock"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 631
    const v20, 0x7f0a0009

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ListView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    .line 634
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/alarmclock/AlarmClock;->setClockVisibility(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/android/alarmclock/AlarmClock;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mRemoveAlarmItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    const v20, 0x7f0a0006

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 652
    .local v6, deleteButton:Landroid/widget/Button;
    const/16 v20, 0x0

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 653
    const v20, 0x7f070002

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 654
    const/high16 v20, 0x41c8

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 655
    const v20, 0x7f0a0008

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 656
    .local v4, addButton:Landroid/widget/Button;
    const/16 v20, 0x8

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 660
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, it:Ljava/util/Iterator;
    :goto_179
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_19b

    .line 662
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 663
    .local v7, entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 664
    .local v17, strKey:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    goto :goto_179

    .line 668
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v17           #strKey:Ljava/lang/Integer;
    :cond_19b
    new-instance v20, Lcom/android/alarmclock/AlarmClock$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/alarmclock/AlarmClock$7;-><init>(Lcom/android/alarmclock/AlarmClock;)V

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v21, "Exiting from Delete..."

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 728
    const/16 v20, 0x1

    goto/16 :goto_54

    .line 730
    .end local v4           #addButton:Landroid/widget/Button;
    .end local v6           #deleteButton:Landroid/widget/Button;
    .end local v12           #it:Ljava/util/Iterator;
    .restart local p1
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1da

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getClockVisibility()Z

    move-result v20

    if-nez v20, :cond_1d7

    const/16 v20, 0x1

    :goto_1c9
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/alarmclock/AlarmClock;->setClockVisibility(Z)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->saveClockVisibility()V

    .line 734
    const/16 v20, 0x1

    goto/16 :goto_54

    .line 732
    :cond_1d7
    const/16 v20, 0x0

    goto :goto_1c9

    .line 736
    :cond_1da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2c5

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    .line 741
    .local v19, view:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getCount()I

    move-result v14

    .line 750
    .local v14, listItemCount:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_200
    if-ge v13, v14, :cond_239

    .line 752
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-nez v20, :cond_21a

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    .line 750
    :cond_217
    :goto_217
    add-int/lit8 v13, v13, 0x1

    goto :goto_200

    .line 758
    :cond_21a
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0a000b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 760
    .local v5, cbox:Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-nez v20, :cond_217

    .line 762
    const/16 v20, 0x1

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_217

    .line 768
    .end local v5           #cbox:Landroid/widget/CheckBox;
    :cond_239
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->getAlarmsId(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 770
    .local v9, idsInDb:I
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 772
    .local v10, idsInMap:I
    if-eq v9, v10, :cond_299

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->getAlarmsId(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_295

    .line 780
    :cond_273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 781
    .local v8, id:I
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_273

    .line 796
    .end local v8           #id:I
    :cond_295
    const/16 v20, 0x1

    goto/16 :goto_54

    .line 787
    :cond_299
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #it:Ljava/util/Iterator;
    :goto_2a3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_295

    .line 789
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 790
    .restart local v7       #entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 791
    .restart local v17       #strKey:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    goto :goto_2a3

    .line 798
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v9           #idsInDb:I
    .end local v10           #idsInMap:I
    .end local v12           #it:Ljava/util/Iterator;
    .end local v13           #j:I
    .end local v14           #listItemCount:I
    .end local v17           #strKey:Ljava/lang/Integer;
    .end local v19           #view:Landroid/widget/ListView;
    :cond_2c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_3a8

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const v21, 0x7f0a0009

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ListView;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ListView;

    .line 802
    .restart local v19       #view:Landroid/widget/ListView;
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/ListView;->getCount()I

    move-result v14

    .line 806
    .restart local v14       #listItemCount:I
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_2f0
    if-ge v13, v14, :cond_31c

    .line 808
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_319

    .line 810
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0a000b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 811
    .restart local v5       #cbox:Landroid/widget/CheckBox;
    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v20

    if-eqz v20, :cond_319

    .line 813
    const/16 v20, 0x0

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 806
    .end local v5           #cbox:Landroid/widget/CheckBox;
    :cond_319
    add-int/lit8 v13, v13, 0x1

    goto :goto_2f0

    .line 820
    :cond_31c
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->getAlarmsId(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 822
    .restart local v9       #idsInDb:I
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v10

    .line 823
    .restart local v10       #idsInMap:I
    if-eq v9, v10, :cond_37c

    .line 826
    invoke-virtual/range {p0 .. p0}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/alarmclock/Alarms;->getAlarmsId(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v20

    if-eqz v20, :cond_378

    .line 831
    :cond_356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 832
    .restart local v8       #id:I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/alarmclock/AlarmClock;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_356

    .line 847
    .end local v8           #id:I
    :cond_378
    const/16 v20, 0x1

    goto/16 :goto_54

    .line 838
    :cond_37c
    sget-object v20, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #it:Ljava/util/Iterator;
    :goto_386
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_378

    .line 840
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 841
    .restart local v7       #entry:Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 842
    .restart local v17       #strKey:Ljava/lang/Integer;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    goto :goto_386

    .line 850
    .end local v7           #entry:Ljava/util/Map$Entry;
    .end local v9           #idsInDb:I
    .end local v10           #idsInMap:I
    .end local v12           #it:Ljava/util/Iterator;
    .end local v13           #j:I
    .end local v14           #listItemCount:I
    .end local v17           #strKey:Ljava/lang/Integer;
    .end local v19           #view:Landroid/widget/ListView;
    :cond_3a8
    const/16 v20, 0x0

    goto/16 :goto_54
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 471
    sget-boolean v1, Lcom/android/alarmclock/AlarmClock;->mBackOption:Z

    if-eqz v1, :cond_14

    .line 472
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/alarmclock/AlarmClock;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/alarmclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    .line 474
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->finish()V

    .line 476
    .end local v0           #intent:Landroid/content/Intent;
    :cond_14
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/alarmclock/AlarmClock;->mBackOption:Z

    .line 477
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 578
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 579
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_14

    .line 580
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mAddAlarmItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 582
    :cond_14
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mToggleClockItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/alarmclock/AlarmClock;->getClockVisibility()Z

    move-result v1

    if-eqz v1, :cond_3d

    const v1, 0x7f070008

    :goto_1f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 585
    iget-boolean v0, p0, Lcom/android/alarmclock/AlarmClock;->flag:Z

    if-eqz v0, :cond_3c

    .line 587
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->isSelectAll()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 588
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 592
    :goto_31
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->isDeSelectAll()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 593
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 598
    :cond_3c
    :goto_3c
    return v3

    .line 582
    :cond_3d
    const v1, 0x7f070007

    goto :goto_1f

    .line 590
    :cond_41
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mSelectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_31

    .line 595
    :cond_47
    iget-object v0, p0, Lcom/android/alarmclock/AlarmClock;->mDeselectAllItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3c
.end method

.method protected onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 442
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 443
    const-string v2, "[Alarm] AlarmClock -> onResume()"

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "face"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 446
    .local v1, face:I
    iget v2, p0, Lcom/android/alarmclock/AlarmClock;->mFace:I

    if-eq v2, v1, :cond_21

    .line 447
    if-ltz v1, :cond_1c

    sget-object v2, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3a

    .line 448
    :cond_1c
    iput v4, p0, Lcom/android/alarmclock/AlarmClock;->mFace:I

    .line 451
    :goto_1e
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmClock;->inflateClock()V

    .line 454
    :cond_21
    const v2, 0x7f0a0008

    invoke-virtual {p0, v2}, Lcom/android/alarmclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 456
    .local v0, addButton:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock;->mAlarmsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_3d

    .line 458
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 464
    :goto_39
    return-void

    .line 450
    .end local v0           #addButton:Landroid/widget/Button;
    :cond_3a
    iput v1, p0, Lcom/android/alarmclock/AlarmClock;->mFace:I

    goto :goto_1e

    .line 462
    .restart local v0       #addButton:Landroid/widget/Button;
    :cond_3d
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_39
.end method
