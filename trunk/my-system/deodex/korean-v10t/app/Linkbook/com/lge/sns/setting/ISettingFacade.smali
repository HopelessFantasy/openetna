.class public interface abstract Lcom/lge/sns/setting/ISettingFacade;
.super Ljava/lang/Object;
.source "ISettingFacade.java"


# static fields
.field public static final DEFAULT_MAX_FEED:I = 0x32

.field public static final DEFAULT_MAX_MESSAGE_THREAD:I = 0x14

.field public static final DEFAULT_MAX_MONTHS_FEED:I = 0x1

.field public static final DEFAULT_MAX_MONTHS_MESSAGE_THREAD:I = 0x1

.field public static final KEY_MAX_FEED:Ljava/lang/String; = "Max Feeds"

.field public static final KEY_MAX_MESSAGE_THREAD:Ljava/lang/String; = "Max Message Thread"

.field public static final KEY_MAX_MONTHS_FEED:Ljava/lang/String; = "Max Months Of Feeds"

.field public static final KEY_MAX_MONTHS_MESSAGE_THREAD:Ljava/lang/String; = "Max Months Message Thread"

.field public static final KEY_SESSION_TOKEN:Ljava/lang/String; = "SessionToken"

.field public static final KEY_SYSTEM_ID:Ljava/lang/String; = "SystemId"

.field public static final UNLIMITED:I


# virtual methods
.method public abstract cancelAlarm()V
.end method

.method public abstract clearUpdateTime()V
.end method

.method public abstract getFeedNum()I
.end method

.method public abstract getFeedPer()I
.end method

.method public abstract getMsgNum()I
.end method

.method public abstract getMsgPer()I
.end method

.method public abstract getSharedPreferences()Landroid/content/SharedPreferences;
.end method

.method public abstract getUpdateTime()Lcom/lge/sns/setting/UpdateTime;
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract scheduleNextAlarm(J)V
.end method

.method public abstract scheduleNextAlarm(JI)V
.end method

.method public abstract setFeedNum(I)V
.end method

.method public abstract setFeedPer(I)V
.end method

.method public abstract setMsgNum(I)V
.end method

.method public abstract setMsgPer(I)V
.end method

.method public abstract setUpdateTime(Lcom/lge/sns/setting/UpdateTime;)V
.end method
