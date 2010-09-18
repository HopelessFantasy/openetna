.class Lcom/android/alarmclock/SetAlarm$2;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/SetAlarm;->onCreate(Landroid/os/Bundle;)V
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
    .line 179
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$2;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "p"
    .parameter "newValue"

    .prologue
    .line 181
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm$2;->this$0:Lcom/android/alarmclock/SetAlarm;

    const/4 v2, 0x0

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v1, v2, p2}, Lcom/android/alarmclock/SetAlarm;->access$700(Lcom/android/alarmclock/SetAlarm;ZLjava/lang/String;)V

    .line 183
    const/4 v1, 0x1

    return v1
.end method
