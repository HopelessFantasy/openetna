.class Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr$QueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationInfo"
.end annotation


# instance fields
.field public date:J

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/phone/NotificationMgr$QueryHandler;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr$QueryHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->this$1:Lcom/android/phone/NotificationMgr$QueryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;)V

    return-void
.end method
