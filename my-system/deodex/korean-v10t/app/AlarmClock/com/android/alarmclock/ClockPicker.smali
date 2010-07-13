.class public Lcom/android/alarmclock/ClockPicker;
.super Landroid/app/Activity;
.source "ClockPicker.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/ClockPicker$ClockAdapter;
    }
.end annotation


# instance fields
.field private mClock:Landroid/view/View;

.field private mClockLayout:Landroid/view/ViewGroup;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mGallery:Landroid/widget/Gallery;

.field private mPosition:I

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/ClockPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/alarmclock/ClockPicker;->mPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/alarmclock/ClockPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/alarmclock/ClockPicker;->selectClock(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/alarmclock/ClockPicker;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mFactory:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private declared-synchronized selectClock(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "face"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/ClockPicker;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/android/alarmclock/ClockPicker;->finish()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 93
    monitor-exit p0

    return-void

    .line 87
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/ClockPicker;->requestWindowFeature(I)Z

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mFactory:Landroid/view/LayoutInflater;

    .line 51
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/ClockPicker;->setContentView(I)V

    .line 53
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/ClockPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    .line 54
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    new-instance v2, Lcom/android/alarmclock/ClockPicker$ClockAdapter;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/ClockPicker$ClockAdapter;-><init>(Lcom/android/alarmclock/ClockPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 57
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/widget/Gallery;->setBackgroundColor(I)V

    .line 59
    const-string v1, "AlarmClock"

    invoke-virtual {p0, v1, v3}, Lcom/android/alarmclock/ClockPicker;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "face"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 61
    .local v0, face:I
    if-ltz v0, :cond_52

    sget-object v1, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_53

    :cond_52
    const/4 v0, 0x0

    .line 63
    :cond_53
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/ClockPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mClockLayout:Landroid/view/ViewGroup;

    .line 64
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mClockLayout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/alarmclock/ClockPicker$1;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/ClockPicker$1;-><init>(Lcom/android/alarmclock/ClockPicker;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mGallery:Landroid/widget/Gallery;

    invoke-virtual {v1, v0, v3}, Landroid/widget/Gallery;->setSelection(IZ)V

    .line 71
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 83
    invoke-direct {p0, p3}, Lcom/android/alarmclock/ClockPicker;->selectClock(I)V

    .line 84
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mClock:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mClockLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mClock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    :cond_b
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mFactory:Landroid/view/LayoutInflater;

    sget-object v1, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    aget v1, v1, p3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mClock:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/android/alarmclock/ClockPicker;->mClockLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker;->mClock:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 79
    iput p3, p0, Lcom/android/alarmclock/ClockPicker;->mPosition:I

    .line 80
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter "parent"

    .prologue
    .line 96
    return-void
.end method
