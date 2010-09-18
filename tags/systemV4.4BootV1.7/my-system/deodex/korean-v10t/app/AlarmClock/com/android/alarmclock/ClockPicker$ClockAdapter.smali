.class Lcom/android/alarmclock/ClockPicker$ClockAdapter;
.super Landroid/widget/BaseAdapter;
.source "ClockPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/ClockPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/ClockPicker;


# direct methods
.method public constructor <init>(Lcom/android/alarmclock/ClockPicker;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/alarmclock/ClockPicker$ClockAdapter;->this$0:Lcom/android/alarmclock/ClockPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 104
    sget-object v0, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 112
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/alarmclock/ClockPicker$ClockAdapter;->this$0:Lcom/android/alarmclock/ClockPicker;

    invoke-static {v1}, Lcom/android/alarmclock/ClockPicker;->access$200(Lcom/android/alarmclock/ClockPicker;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget-object v2, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    aget v2, v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, clock:Landroid/view/View;
    return-object v0
.end method
