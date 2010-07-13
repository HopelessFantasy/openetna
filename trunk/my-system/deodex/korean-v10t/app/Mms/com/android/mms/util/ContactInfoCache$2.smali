.class Lcom/android/mms/util/ContactInfoCache$2;
.super Landroid/database/ContentObserver;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactInfoCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactInfoCache;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfUpdate"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-static {v0}, Lcom/android/mms/util/ContactInfoCache;->access$000(Lcom/android/mms/util/ContactInfoCache;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 180
    :try_start_7
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/util/ContactInfoCache;->access$302(Lcom/android/mms/util/ContactInfoCache;Z)Z

    .line 181
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache$2;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-static {v1}, Lcom/android/mms/util/ContactInfoCache;->access$200(Lcom/android/mms/util/ContactInfoCache;)V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
