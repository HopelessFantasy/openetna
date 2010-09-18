.class Lcom/android/phone/NotificationMgr$StatusBarMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarMgr"
.end annotation


# instance fields
.field private mIsExpandedViewEnabled:Z

.field private mIsNotificationEnabled:Z

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 173
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 174
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method


# virtual methods
.method enableExpandedView(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-eq v0, p1, :cond_9

    .line 199
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 202
    :cond_9
    return-void
.end method

.method enableNotificationAlerts(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-eq v0, p1, :cond_9

    .line 185
    iput-boolean p1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->updateStatusBar()V

    .line 188
    :cond_9
    return-void
.end method

.method updateStatusBar()V
    .registers 3

    .prologue
    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, state:I
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsExpandedViewEnabled:Z

    if-nez v1, :cond_7

    .line 212
    or-int/lit8 v0, v0, 0x1

    .line 215
    :cond_7
    iget-boolean v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->mIsNotificationEnabled:Z

    if-nez v1, :cond_d

    .line 216
    or-int/lit8 v0, v0, 0x4

    .line 221
    :cond_d
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$StatusBarMgr;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 222
    return-void
.end method
