.class Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl$1;
.super Landroid/database/ContentObserver;
.source "ConversationList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 702
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl$1;->this$0:Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfUpdate"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl$1;->this$0:Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;->access$900(Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 704
    return-void
.end method
