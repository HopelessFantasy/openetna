.class Lcom/android/mms/util/ContactInfoCache$3;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ContactInfoCache;->startCacheRebuilder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ContactInfoCache;)V
    .registers 2
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache$3;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache$3;->this$0:Lcom/android/mms/util/ContactInfoCache;

    invoke-static {v0}, Lcom/android/mms/util/ContactInfoCache;->access$500(Lcom/android/mms/util/ContactInfoCache;)V

    .line 487
    return-void
.end method
