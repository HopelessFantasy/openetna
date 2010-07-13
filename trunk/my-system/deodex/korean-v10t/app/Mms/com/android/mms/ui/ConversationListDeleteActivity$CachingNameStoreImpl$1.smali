.class Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl$1;
.super Landroid/database/ContentObserver;
.source "ConversationListDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl$1;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfUpdate"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl$1;->this$0:Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;->access$600(Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 313
    return-void
.end method
